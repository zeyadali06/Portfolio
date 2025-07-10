'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "46c73f5eaa21e9af6a19af7b9214faae",
"assets/AssetManifest.bin.json": "0e030969b1780c8a6358e9d3447e94a9",
"assets/AssetManifest.json": "63b64eccadbc5f1a91e38fe6b2d61c9a",
"assets/assets/animations/ComputerAnimation1.json": "f50de63dae898604fba67aac56bc392f",
"assets/assets/animations/ComputerAnimation2.json": "709564b977a6ae835041a8650d4e30b0",
"assets/assets/images/AndroidLogo.png": "4fc579790340c9b488ee7bbba3dbd698",
"assets/assets/images/AppleLogo.png": "9f4acfbdd14f2dac68b0cba58a868534",
"assets/assets/images/app_icon.png": "4c020471f783eef3ef5baec3a7a39664",
"assets/assets/images/Background.png": "4052eb3fb1e4dfa3db5c40c65e0d16fe",
"assets/assets/images/profile_image.jpg": "2eccac0704a90f0d57e9098263d247f9",
"assets/assets/projectsPrototypes/FashionApp.png": "1d293a83b3ebd2abc4f8fdafab86409c",
"assets/assets/projectsPrototypes/LinkAIApp.png": "db954b98611d34720072091a645b2626",
"assets/assets/projectsPrototypes/MealRecommendationApp.png": "518d81347f45dd3231b3541b7eee3bda",
"assets/assets/projectsPrototypes/MiniInstapayApp.png": "6aeffd48a3d7687631cd1565eec41ba9",
"assets/assets/projectsPrototypes/TennisApp.png": "cbff0b10d9336728d481b55771cf33a5",
"assets/assets/projectsPrototypes/ToDoApp.png": "803b5c877d01d6b68bb7049c480f4596",
"assets/assets/skillsIcons/Bloc.png": "a7ee7719731846a5677de50c19eb8c2b",
"assets/assets/skillsIcons/Dart.png": "84bea1dedc845964a9dde443741a98b6",
"assets/assets/skillsIcons/Firebase.png": "aedbe09f6f2adad8f54dfae85b9f8c68",
"assets/assets/skillsIcons/Flutter.png": "a2974dc96470866f9e8b1039db15206c",
"assets/assets/skillsIcons/Git.png": "4a1c18b4b873fc4929b665b0fb793d02",
"assets/assets/skillsIcons/GitHub.png": "1b8bd2f589c5b401b8cf83aa97c914f5",
"assets/assets/skillsIcons/Java.png": "64289bb4096434811eb34946247c9ecf",
"assets/assets/skillsIcons/Jira.png": "3222cb9f7b4f8273917d07109c71ae35",
"assets/assets/skillsIcons/Kotlin.png": "7b053ee07337c40cab066473c9112e8c",
"assets/assets/skillsIcons/Postman.png": "aa662ff2b729f500a4f71b6b72622231",
"assets/assets/skillsIcons/Socket.io.png": "5fa2719afdb4f8e7e3c03ebd3d14d42d",
"assets/assets/skillsIcons/Trello.png": "6435e708b6caa6b64b2c534329e9a490",
"assets/FontManifest.json": "0750250105f25fceaccb854e3d34f4b1",
"assets/fonts/CascadiaMonoPL-Bold.otf": "acbfa60435c03f3b67e3469df1bef210",
"assets/fonts/CascadiaMonoPL-ExtraLight.otf": "da999975bf39e808c7b870993b4b37f3",
"assets/fonts/CascadiaMonoPL-Light.otf": "3993a8353b152f4481f4ca8becd8a2f5",
"assets/fonts/CascadiaMonoPL-Regular.otf": "83929fb6d2fa982d0d3244dae4c19266",
"assets/fonts/CascadiaMonoPL-SemiBold.otf": "55d14bd7ce30ec4cc7b3edc2afe97248",
"assets/fonts/MaterialIcons-Regular.otf": "b7f9323b610093e221776c967374a061",
"assets/NOTICES": "e880ee068e328478fafd77405b82947b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "7b374809c3fdc92f556932d23ab08bac",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "03d4d10f4ba51a280d186f2da3b9b456",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "72aad9eaf7e26b246e067361562572d4",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "0c33a7da7f0780016266bde55174c025",
"icons/Icon-192.png": "f54622eb536f5e0c8c99bd1ad31d5630",
"icons/Icon-512.png": "32f99edacc6a1e2ae2d9cd6534ed3943",
"icons/Icon-maskable-192.png": "f54622eb536f5e0c8c99bd1ad31d5630",
"icons/Icon-maskable-512.png": "32f99edacc6a1e2ae2d9cd6534ed3943",
"index.html": "812cc4e8000a02dc6ed0494a4269dcc1",
"/": "812cc4e8000a02dc6ed0494a4269dcc1",
"main.dart.js": "d3e7bf112c172738e6cf7b3dd8a8a5a0",
"manifest.json": "60f0e535533ba05a191f9853f30c5559",
"version.json": "51301ccc7c625080e22561dd7e950ab3"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
