const functions = require("firebase-functions");
const admin = require("firebase-admin");

if (!admin.apps.length) {
  admin.initializeApp();
}

function toSafeTopic(name) {
  if (!name) return "default_topic";
  const sanitized = String(name)
    .replace(/[^a-zA-Z0-9-_.~%]/g, "_")
    .replace(/_+/g, "_")
    .replace(/^_+|_+$/g, "")
    .toLowerCase()
    .slice(0, 900);
  return sanitized.length > 0 ? sanitized : "default_topic";
}

exports.subscribeToWardTopic = functions
  .region("asia-southeast1")
  .https.onCall(async (data, context) => {
    if (!context.auth) {
      throw new functions.https.HttpsError(
        "unauthenticated",
        "Anda mesti log masuk untuk melanggan notifikasi.",
      );
    }

    const token = String(data.fcmToken || "").trim();
    const wardName = String(data.wardName || "").trim();

    if (!token || token.length < 100) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Token FCM tidak sah.",
      );
    }
    if (!wardName) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Nama wad diperlukan.",
      );
    }

    const newTopic = toSafeTopic(wardName);
    let unsubWarnings = [];

    // Combine single oldWardName and oldWards array into one unified list to remove
    let wardsToRemove = [];
    if (Array.isArray(data.oldWards)) {
      wardsToRemove = data.oldWards;
    } else if (data.oldWardName) {
      wardsToRemove = [data.oldWardName];
    }

    // Unsubscribe from ALL previous wards concurrently
    if (wardsToRemove.length > 0) {
      const unsubPromises = wardsToRemove.map(async (ward) => {
        const oldTopic = toSafeTopic(String(ward).trim());

        // Unsubscribe as long as it's not the exact same as the new topic
        if (oldTopic !== newTopic && oldTopic !== "default_topic") {
          try {
            await admin.messaging().unsubscribeFromTopic([token], oldTopic);
            console.log(`[${context.auth.uid}] Unsubscribed from: ${oldTopic}`);
          } catch (e) {
            unsubWarnings.push(
              `Gagal unsubscribe dari ${oldTopic}: ${e.message}`,
            );
            console.warn(
              `[${context.auth.uid}] Unsubscribe error for ${oldTopic}:`,
              e.message,
            );
          }
        }
      });

      // Wait for all unsubscriptions to finish
      await Promise.all(unsubPromises);
    }

    // Now subscribe to the new topic
    try {
      const response = await admin
        .messaging()
        .subscribeToTopic([token], newTopic);

      if (response.failureCount > 0) {
        const errorDetail = response.errors[0]?.error;
        console.error(`[${context.auth.uid}] Subscription error:`, errorDetail);

        throw new functions.https.HttpsError(
          "internal",
          errorDetail?.message || "FCM subscription gagal pada pelayan.",
        );
      }

      console.log(`[${context.auth.uid}] Subscribed to: ${newTopic}`);

      return {
        success: true,
        topic: newTopic,
        warnings: unsubWarnings.length > 0 ? unsubWarnings : undefined,
      };
    } catch (error) {
      if (error instanceof functions.https.HttpsError) throw error;

      console.error(`[${context.auth.uid}] Critical error:`, error);
      throw new functions.https.HttpsError("internal", "Internal Server Error");
    }
  });
