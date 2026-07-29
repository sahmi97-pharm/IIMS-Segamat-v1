const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.unsubscribeFromWardTopic = functions
  .region("asia-southeast1")
  .https.onCall(async (data, context) => {
    // Auth check
    if (!context.auth) {
      throw new functions.https.HttpsError(
        "unauthenticated",
        "Anda mesti log masuk.",
      );
    }

    // Safely cast to string
    const fcmToken = String(data.fcmToken || "").trim();

    // Validate inputs
    if (!fcmToken || fcmToken.length < 20) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Token FCM tidak sah.",
      );
    }

    // Convert ward name to safe FCM topic
    function toSafeTopic(name) {
      if (!name) return "default_topic";
      const sanitized = String(name)
        .replace(/[^a-zA-Z0-9\-_.~]/g, "_")
        .replace(/_+/g, "_")
        .replace(/^_+|_+$/g, "")
        .toLowerCase()
        .slice(0, 900);
      return sanitized.length > 0 ? sanitized : "default_topic";
    }

    // Capture the input whether it's a single string or an array of wards
    let wardsToRemove = [];
    if (Array.isArray(data.wardNames)) {
      wardsToRemove = data.wardNames;
    } else if (Array.isArray(data.wardName)) {
      wardsToRemove = data.wardName;
    } else if (data.wardName) {
      wardsToRemove = [data.wardName];
    }

    if (wardsToRemove.length === 0) {
      console.log(`[${context.auth.uid}] No wards provided to unsubscribe.`);
      // Return true to keep the reset flow moving on the frontend
      return true;
    }

    console.log(
      `[${context.auth.uid}] Unsubscribe attempt | wards: ${wardsToRemove.join(", ")}`,
    );

    try {
      // Unsubscribe from ALL provided wards concurrently
      const unsubPromises = wardsToRemove.map(async (ward) => {
        const topic = toSafeTopic(String(ward).trim());

        if (topic === "default_topic") return;

        try {
          const response = await admin
            .messaging()
            .unsubscribeFromTopic([fcmToken], topic);

          if (response.failureCount > 0) {
            const errorDetail = response.errors?.[0]?.error;
            const errMsg = errorDetail?.message ?? "Unknown FCM error";
            console.warn(`Soft failure | topic: ${topic} | reason: ${errMsg}`);
            // We do NOT throw here. We want to continue unsubscribing from other topics.
          } else {
            console.log(`Unsubscribe success | topic: ${topic}`);
          }
        } catch (e) {
          console.warn(
            `Soft failure exception | topic: ${topic} | reason: ${e.message}`,
          );
        }
      });

      // Wait for all unsubscriptions to finish
      await Promise.all(unsubPromises);

      // Return true — token is now clean of these topics
      return true;
    } catch (error) {
      if (error instanceof functions.https.HttpsError) throw error;
      console.error(
        `[${context.auth.uid}] Critical error during unsubscribe`,
        error,
      );
      throw new functions.https.HttpsError(
        "internal",
        "Ralat dalaman semasa unsubscribe.",
      );
    }
  });
