importScripts('https://www.gstatic.com/firebasejs/9.0.0/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/9.0.0/firebase-messaging-compat.js');

// ─── Firebase Config ───────────────────────────────────────────────────────────
firebase.initializeApp({
  apiKey: "AIzaSyC0gKydleHIZANM1OMdTKxEoil9hW-MEOE",
  authDomain: "rxlink-d54ee.firebaseapp.com",
  projectId: "rxlink-d54ee",
  storageBucket: "rxlink-d54ee.firebasestorage.app",
  messagingSenderId: "672505210579",
  appId: "1:672505210579:web:9d23498fbcc06b1b841626"
});

const messaging = firebase.messaging();

// Dynamically grab the origin so local testing works without opening production URLs
const APP_BASE_URL = self.location.origin; 

function buildDeepLink(locationref) {
  return locationref
    ? `${APP_BASE_URL}/?wardId=${encodeURIComponent(locationref)}`
    : APP_BASE_URL;
}

// ─── 1. Background Message Handler ────────────────────────────────────────────
// REQUIRES A DATA-ONLY PAYLOAD FROM BACKEND TO AVOID DUPLICATE NOTIFICATIONS
messaging.onBackgroundMessage((payload) => {
  console.log('[SW] Background message received:', payload);

  // Fallback to data fields since data-only payloads won't have payload.notification
  const title       = payload.notification?.title || payload.data?.title || 'IIMS Segamat Update';
  const body        = payload.notification?.body  || payload.data?.body  || 'Sila semak aplikasi.';
  const locationref = payload.data?.locationref   || null;

  const options = {
    body,
    icon: '/icons/Icon-192.png',
    badge: '/icons/Icon-72.png',
    tag: 'iims-ward-update',
    renotify: true,
    requireInteraction: true,
    data: {
      locationref,
      url: buildDeepLink(locationref),
    }
  };

  return self.registration.showNotification(title, options);
});

// ─── 2. DevTools Push Test Listener ───────────────────────────────────────────
self.addEventListener('push', (event) => {
  if (!event.data) return;

  let data = {};
  try {
    data = event.data.json();
  } catch (e) {
    return; // Not JSON, likely an empty FCM ping
  }

  // IGNORE real FCM messages so we don't trigger duplicates.
  // When testing in DevTools, ensure your JSON includes "isDevToolsTest": true
  if (!data.isDevToolsTest) return; 

  const title       = data.notification?.title || 'Ujian IIMS Segamat';
  const body        = data.notification?.body  || '';
  const locationref = data.data?.locationref   || null;

  const options = {
    body,
    icon: '/icons/Icon-192.png',
    badge: '/icons/Icon-72.png',
    tag: 'iims-test-push',
    data: {
      locationref,
      url: buildDeepLink(locationref),
    }
  };

  event.waitUntil(self.registration.showNotification(title, options));
});

// ─── 3. Notification Click → Deep Link Navigation ─────────────────────────────
self.addEventListener('notificationclick', (event) => {
  event.notification.close();

  const targetUrl   = event.notification.data?.url || APP_BASE_URL;
  const locationref = event.notification.data?.locationref || null;

  event.waitUntil(
    clients.matchAll({ type: 'window', includeUncontrolled: true })
      .then((windowClients) => {
        // App tab already open — focus it and pass the locationref via postMessage
        for (const client of windowClients) {
          // Changed to check origin so it matches both localhost and prod gracefully
          if (client.url.startsWith(APP_BASE_URL) && 'focus' in client) {
            client.postMessage({
              type: 'NOTIFICATION_CLICK',
              locationref,
              url: targetUrl,
            });
            return client.focus(); 
          }
        }

        // No tab open — open a new one with ?wardId= in the URL
        if (clients.openWindow) {
          return clients.openWindow(targetUrl);
        }
      })
  );
});