'use strict';

self.addEventListener('install', (event) => {
  // Activate immediately
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  // Do nothing. 
  // We removed the unregister() command so it doesn't kill the Firebase Service Worker.
  console.log('[Flutter SW] Safe Flutter Service Worker activated.');
});

self.addEventListener('fetch', (event) => {
  // Let the browser handle all network requests normally
  return;
});