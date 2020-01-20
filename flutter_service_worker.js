'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/manifest.json": "e0d30a93dc03ee3ed96a4bf9fd96fa53",
"/main.dart.js": "b607cb97d89a444937f346b97db02538",
"/assets/FontManifest.json": "aa96d9a8aa8ce41a2f832a2110dccbfb",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/AssetManifest.json": "48575de9b0e98abbdd60ba62e83223ee",
"/assets/LICENSE": "0866302cc5a4bd6420dd9c2a47a38ff6",
"/assets/assets/images/git_icon.png": "14fe217384f5da06d9f9078d17f9db00",
"/assets/assets/images/git.png": "a908f0f7ea035bc1e44f43664774057f",
"/assets/packages/line_icons/lib/assets/fonts/LineIcons.ttf": "8d0d74fa070d25f1d57e29df18800b8a",
"/index.html": "b3b3acaacb8a7d0e9a62cf06da08e647",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
