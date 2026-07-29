const functions = require("firebase-functions");
const admin = require("firebase-admin");

// Initialize Firebase Admin (safe pattern for deployment)
if (admin.apps.length === 0) {
  admin.initializeApp();
}
const db = admin.firestore();

exports.dailyReset = functions
  .region("asia-southeast1")
  .runWith({ timeoutSeconds: 540, memory: "1GB" })
  .pubsub.schedule("0 4 * * *")
  .timeZone("Asia/Kuala_Lumpur")
  .onRun(async (context) => {
    console.log("Running daily reset for all locations...");

    try {
      // Define the fields to reset based on the latest schema
      const resetData = {
        // --- Original Fields ---
        trolley_status: "N/A",
        trolley_arrival_time: null,
        trolley_finished_time: null,
        trolley_fridge_item: false,
        trolley_DD_patient_basis: false,
        fs_med_status: "N/A",
        fs_med_fridge_item: false,
        fs_ivdrip_status: "N/A",
        fs_dd_status: "N/A",
        reg_name: null,
        tdk_TU_Coolbox: false,
        tdk_TU_DDPatientBasis: false,
        tdk_FSU_Coolbox: false,

        // --- New FSU/FSIVD/FSDD Fields from Schema ---
        fsu_beb: false,
        fsu_bebr: "",
        fsu_rb: false,
        fsu_rbr: "",
        fsu_phis: false,
        fsu_phisr: "",
        fsivd_phis: false,
        fsivd_phisr: "",
        fsdd_rb: false,
        fsdd_rbr: "",
        fsdd_phis: false,
        fsdd_phisr: "",

        // --- Numeric/Counter Fields ---
        fsu_item: 0,
        fsivdrip_item: 0,
        notificationCount: 0,

        // --- Completion/Checklist Boolean Fields ---
        fsu_bebc: false,
        fsu_rbc: false,
        fsu_phisc: false,
        fsivdrip_phisc: false,
        fsdd_rbc: false,
        fsdd_phisc: false,

        // --- System Metadata ---
        last_update: admin.firestore.FieldValue.serverTimestamp(),
      };

      const locationsRef = db.collection("locations");
      const snapshot = await locationsRef.get();

      if (snapshot.empty) {
        console.log("No documents found in locations to reset.");
        return null;
      }

      // Batched writes (max 500 per batch)
      const batchSize = 500;
      let batch = db.batch();
      let count = 0;
      const promises = [];

      snapshot.docs.forEach((doc) => {
        batch.update(doc.ref, resetData);
        count++;

        if (count === batchSize) {
          promises.push(batch.commit());
          batch = db.batch();
          count = 0;
        }
      });

      if (count > 0) {
        promises.push(batch.commit());
      }

      await Promise.all(promises);

      console.log(
        `Successfully reset ${snapshot.size} documents at ${new Date().toISOString()}`,
      );
      return null;
    } catch (error) {
      console.error("Error during daily reset:", error);
      throw error;
    }
  });
