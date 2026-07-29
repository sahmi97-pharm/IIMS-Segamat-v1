const functions = require("firebase-functions");
const admin = require("firebase-admin");

// Inisialisasi Admin SDK hanya sekali
if (!admin.apps.length) {
  admin.initializeApp();
}

exports.sendTopicPush = functions
  .region("asia-southeast1")
  .https.onCall(async (data, context) => {
    // -------------------------------------------------------------------------
    // 1. Semak Authentication
    // -------------------------------------------------------------------------
    if (!context.auth) {
      throw new functions.https.HttpsError(
        "unauthenticated",
        "Log masuk diperlukan.",
      );
    }

    // -------------------------------------------------------------------------
    // 2. (Pilihan) Semak kebenaran peringkat peranan / ward
    //    Nyahkomen blok ini jika anda mahu hanya pengguna tertentu
    //    boleh menghantar notifikasi.
    // -------------------------------------------------------------------------
    // const callerUid = context.auth.uid;
    // const userDoc   = await admin.firestore().collection('users').doc(callerUid).get();
    // if (!userDoc.exists || !userDoc.data().canSendNotifications) {
    //   throw new functions.https.HttpsError(
    //     'permission-denied',
    //     'Anda tidak mempunyai kebenaran untuk menghantar notifikasi.'
    //   );
    // }

    // -------------------------------------------------------------------------
    // 3. Ambil & bersihkan data input
    // -------------------------------------------------------------------------
    const topic = (data.topic ?? "").trim();
    const title = (data.title ?? "").trim();
    const body = (data.body ?? "").trim();
    const locationPath = (data.locationPath ?? "").trim();

    // -------------------------------------------------------------------------
    // 4. Validasi — pastikan semua medan ada
    // -------------------------------------------------------------------------
    if (!topic || !title || !body || !locationPath) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Data tidak lengkap. Pastikan topic, title, body, dan locationPath dihantar.",
      );
    }

    // -------------------------------------------------------------------------
    // 5. Validasi panjang teks (had FCM)
    // -------------------------------------------------------------------------
    if (title.length > 100 || body.length > 500) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Tajuk (maks 100) atau isi kandungan (maks 500) terlalu panjang.",
      );
    }

    // -------------------------------------------------------------------------
    // 6. Validasi format topic (peraturan Firebase)
    // -------------------------------------------------------------------------
    if (!/^[a-zA-Z0-9\-_.~]+$/.test(topic)) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Format topic tidak sah. Gunakan aksara: a-z A-Z 0-9 - _ . ~",
      );
    }

    // -------------------------------------------------------------------------
    // 7. Validasi locationPath
    //    Regex dilonggarkan sedikit untuk menyokong path Firestore biasa
    //    (termasuk titik dan aksara lain dalam document ID)
    // -------------------------------------------------------------------------
    if (!/^[a-zA-Z0-9/_\-.~]+$/.test(locationPath)) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Format locationPath tidak sah.",
      );
    }

    // -------------------------------------------------------------------------
    // 8. Bina mesej FCM
    //
    //    • notification  → dipaparkan oleh sistem (Android / iOS background)
    //    • data          → dibaca oleh FlutterFlow untuk navigasi deep-link
    //    • webpush       → DIPERLUKAN supaya notifikasi muncul pada PWA / Chrome
    // -------------------------------------------------------------------------
    const deepLinkUrl = `/DetailVisualBoardUpdated?locationref=${encodeURIComponent(locationPath)}`;

    const message = {
      // -- Payload biasa (Android foreground / background) -------------------
      notification: {
        title,
        body,
      },

      // -- Data payload untuk FlutterFlow navigation handler ----------------
      //    Kedua-dua format disertakan (JSON wrap + flat) supaya serasi
      //    dengan pelbagai versi handler FlutterFlow.
      data: {
        initialPageName: "DetailVisualBoardUpdated",
        parameterData: JSON.stringify({ locationref: locationPath }),
        locationref: locationPath, // flat fallback
      },

      // -- Web Push (PWA / Chrome) ------------------------------------------
      //    Tanpa blok ini, notifikasi TIDAK akan muncul pada pelayar web
      //    walaupun FCM melaporkan hantar berjaya.
      webpush: {
        notification: {
          title,
          body,
          icon: "/icons/Icon-192.png", // ← tukar kepada path ikon PWA anda
          badge: "/icons/Icon-72.png", // ← ikon kecil pada status bar (pilihan)
          requireInteraction: false, // tetapkan true jika mahu notifikasi kekal
        },
        fcm_options: {
          link: deepLinkUrl, // URL yang dibuka apabila notifikasi diklik
        },
      },

      // -- Topic -------------------------------------------------------------
      topic,
    };

    // -------------------------------------------------------------------------
    // 9. Hantar mesej & log hasilnya
    // -------------------------------------------------------------------------
    try {
      const messageId = await admin.messaging().send(message);

      console.log(
        `[sendTopicPush] Berjaya | caller=${context.auth.uid} | topic=${topic} | msgId=${messageId}`,
      );

      return {
        success: true,
        messageId: messageId,
      };
    } catch (error) {
      console.error(
        `[sendTopicPush] Ralat | caller=${context.auth.uid} | topic=${topic}`,
        error,
      );
      throw new functions.https.HttpsError(
        "internal",
        "Gagal menghantar notifikasi ke Firebase.",
      );
    }
  });
