const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.sendTargetedPush = functions
  .region("asia-southeast1")
  .https.onCall(async (data, context) => {
    // Basic security check to ensure the user clicking the button is logged in
    if (!context.auth || !context.auth.uid) {
      throw new functions.https.HttpsError(
        "unauthenticated",
        "User must be logged in.",
      );
    }

    // Capture the arguments sent from FlutterFlow
    const tokens = data.tokens; // The List of FCM tokens
    const title = data.title;
    const body = data.body;
    const locationPath = data.locationPath;

    // Write your code below!

    // Safety check to ensure we aren't sending to an empty list
    if (!tokens || tokens.length === 0) {
      return { succeeded: false, error: "No target devices found." };
    }

    const payload = {
      notification: {
        title: title,
        body: body,
      },
      data: {
        locationPath: locationPath || "",
        click_action: "FLUTTER_NOTIFICATION_CLICK",
      },
    };

    try {
      // Send the notification to all device tokens simultaneously
      const response = await admin.messaging().sendMulticast({
        tokens: tokens,
        ...payload,
      });

      return {
        succeeded: true,
        successCount: response.successCount,
        failureCount: response.failureCount,
      };
    } catch (error) {
      console.error("Error sending push:", error);
      throw new functions.https.HttpsError("internal", error.message);
    }

    // Write your code above!
  });
