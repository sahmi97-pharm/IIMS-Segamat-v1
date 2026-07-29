const functions = require("firebase-functions");
const admin = require("firebase-admin");

// To avoid deployment errors, do not call admin.initializeApp() in your code
// if it is already initialized by the environment.
if (admin.apps.length === 0) {
  admin.initializeApp();
}

const db = admin.firestore();

exports.dailyArchive = functions
  .region("asia-southeast1")
  .runWith({
    memory: "256MB",
    timeoutSeconds: 540,
  })
  .pubsub.schedule("0 20 * * *") // 8:00 PM every day
  .timeZone("Asia/Kuala_Lumpur")
  .onRun(async (context) => {
    console.log("Running daily statistic archive for WARDS only...");

    try {
      const todayStr = new Date().toLocaleDateString("en-CA", {
        timeZone: "Asia/Kuala_Lumpur",
      });

      const todayTimestamp = admin.firestore.Timestamp.fromDate(
        new Date(todayStr),
      );

      // 1. QUERY: Get only locations where type is 'Ward'
      // (Make sure your database uses "Ward" with a capital W. If it's lowercase, change this to 'ward')
      const locationsRef = db.collection("locations");
      const snapshot = await locationsRef.where("type", "==", "Ward").get();

      if (snapshot.empty) {
        console.log("No ward locations found to archive.");
        return null;
      }

      console.log(`Found ${snapshot.size} ward locations to archive.`);

      // Handle large datasets
      const batches = [];
      let currentBatch = db.batch();
      let operationCount = 0;
      const BATCH_LIMIT = 490;

      // Variables for Average Calculation
      let totalMinutes = 0;
      let validTrolleys = 0;

      snapshot.docs.forEach((doc) => {
        const locationData = doc.data();
        const archiveDocId = `${doc.id}_${todayStr}`;

        // 2. TARGET: Saving to 'statistic_archive' (Singular)
        const archiveRef = db.collection("statistic_archive").doc(archiveDocId);

        // Calculate Time Taken
        let timeTakenMinutes = null;
        const arrival = locationData.trolley_arrival_time || null;
        const finished = locationData.trolley_finished_time || null;

        if (arrival && finished) {
          const diffMs =
            finished.toDate().getTime() - arrival.toDate().getTime();

          // Only count positive times
          if (diffMs >= 0) {
            timeTakenMinutes = Math.round(diffMs / 60000);

            // Add to average calculation
            totalMinutes += timeTakenMinutes;
            validTrolleys++;
          }
        }

        const archiveData = {
          date: todayTimestamp,
          location_ref: doc.ref,
          location_name: locationData.name || null,
          type: locationData.type || null,
          trolley_status: locationData.trolley_status || null,
          trolley_arrival_time: arrival,
          trolley_finished_time: finished,
          trolley_time_taken_min: timeTakenMinutes,
          trolley_fridge_item: locationData.trolley_fridge_item || false,
          trolley_DD_patient_basis:
            locationData.trolley_DD_patient_basis || false,
          fs_med_status: locationData.fs_med_status || null,
          fs_med_fridge_item: locationData.fs_med_fridge_item || false,
          fs_ivdrip_status: locationData.fs_ivdrip_status || null,
          fs_dd_status: locationData.fs_dd_status || null,
          reg_name: locationData.reg_name || null,
        };

        currentBatch.set(archiveRef, archiveData, { merge: true });
        operationCount++;

        // Batch management
        if (operationCount >= BATCH_LIMIT) {
          batches.push(currentBatch);
          currentBatch = db.batch();
          operationCount = 0;
        }
      });

      // 3. AVERAGE: Calculate daily average for Wards
      let dailyAverage = null;
      if (validTrolleys > 0) {
        dailyAverage = totalMinutes / validTrolleys;
      }

      // Save Average to 'daily_averages'
      const averageDocId = todayStr;
      const averageRef = db.collection("daily_averages").doc(averageDocId);

      currentBatch.set(
        averageRef,
        {
          date: todayTimestamp,
          average_trolley_time: dailyAverage,
          total_trolleys: validTrolleys,
          total_locations_archived: snapshot.size,
          location_type: "Ward",
          last_update: admin.firestore.FieldValue.serverTimestamp(),
        },
        { merge: true },
      );

      // Push final batch
      batches.push(currentBatch);

      // Commit all
      await Promise.all(batches.map((batch) => batch.commit()));

      console.log(
        `✅ Successfully archived ${snapshot.size} WARD documents to statistic_archive.`,
      );
      console.log(`📊 Average time: ${dailyAverage?.toFixed(2)} minutes`);
      return null;
    } catch (error) {
      console.error("❌ Error archiving ward statistics:", error);
      return null;
    }
  });
