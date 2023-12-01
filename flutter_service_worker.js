'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "a36caf255f380423e19154b6c2449ea4",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"version.json": "75ddfda3e0ae0e0dc8f0fbf267856f11",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "6aa35be9ef3e5511785703e7d835ba7c",
"/": "6aa35be9ef3e5511785703e7d835ba7c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/NOTICES": "25ff7b56bc59672c6cabca6a1190e145",
"assets/AssetManifest.json": "5b2c698504233e9d9ba18fac1d809556",
"assets/AssetManifest.bin.json": "b0c840c7078d49453de0bda673abd67f",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/assets/SoldaduraConAcero.png": "ef00a2c35c18b10e60ae17739f1fda2e",
"assets/assets/MoldeoPorSoplado.png": "1df80cf5e5f982d4c00edd52ea13d043",
"assets/assets/Doblado.png": "06123f1871186793830de7ab7c94ee88",
"assets/assets/Avellanado.png": "d22b31a9b178ab72d225a937e224634d",
"assets/assets/LimpiezaUltrasonica.jpg": "1d3ea6593659e7e07db5258e5bfb9843",
"assets/assets/Refrentado.jpg": "431b7f4c217b9e24fe93a31ed66b5659",
"assets/assets/Templado.png": "4b60b5523ff2c90a3e8b18ea2c08c2f3",
"assets/assets/Pulido.jpg": "00adb82ef0bcb2b8fad130ba9e8ca00f",
"assets/assets/Cepillado.png": "88755314ebe7273a771800881f611ef5",
"assets/assets/SoldaduraTermica.png": "01de9a924e854f3632cc512d07704313",
"assets/assets/Rectificado.png": "266c4d5198c63a09c9350b703e43e0fe",
"assets/assets/Pintado.png": "29aca3129f564fa2b24acaba29f22145",
"assets/assets/SoldaduraFuerte.png": "d9262b9eafad7dbdd7e7d8b51d35644c",
"assets/assets/FundicionEnArena.png": "53db2027803563cb5bf18928ef75d024",
"assets/assets/LimpiezaEnMasa.jpg": "e9ecb48f388d5a9acdd351f41830b465",
"assets/assets/UnionConCu%25C3%25B1as.png": "b6d9c99ca7bd83e9672466672ce47561",
"assets/assets/Fresado.png": "7f6704f761921593f0ef7796fa2704ab",
"assets/assets/CortePorAgua.png": "aa7f3723937d28154cc5231eb9f80fd6",
"assets/assets/Extrusion.png": "d1d313a49eb035e58691d985f1e49ee0",
"assets/assets/LimpiezaConSolventes.jpg": "6e777fc9c29308d268c6f10b9789fb06",
"assets/assets/Colado.png": "48f140cad0c66377f87dad3fb2edc4a5",
"assets/assets/Acunado.png": "586b790a14074831bbbf5452a52796d2",
"assets/assets/Cizallado.png": "1ac7dc541eaeaae0a8c2ac764159d50d",
"assets/assets/Limado.jpg": "e08a6672891041307bf7348d5cfd198e",
"assets/assets/Trefilado.png": "cf752b6e3127359122f2820de5fddd6b",
"assets/assets/PrensadoIsostatico.jpg": "59b3ddaead4a6d1bd708782f4c14ca89",
"assets/assets/Sinterizado.jpg": "e1177a5b22751f388f2053ba82cfd3b1",
"assets/assets/SoldaduraElectrica.png": "8eb7bc28e4f0c02a46b69bf36233481e",
"assets/assets/LimpiezaConChorroAbrasivo.jpg": "32acdf4db5377c145f3f8c54c294e66d",
"assets/assets/SoldaduraBlanda.png": "fa02f78354eba66cd8ef083e457d06d9",
"assets/assets/Roscado.jpg": "9437fcf2b2aa4783de9c506fca793b31",
"assets/assets/LimpiezaEnMasaOTambor.jpg": "57de5e73c67ec3a254c4172a6762c46a",
"assets/assets/Esmerilado.png": "856373ae5d1f3b04a982689ec59582d8",
"assets/assets/Lapeado.jpg": "f2654aec7c63b9a7b2c93bb243db455f",
"assets/assets/Torneado.png": "cbf54595c852a23e82db441b89ae3189",
"assets/assets/Cromado.png": "d1722cbf65353b94d210be32c2a574b0",
"assets/assets/Perdigonado.png": "9033f79fea6d78f4a797bc77e1a32d60",
"assets/assets/Abocardado.png": "792677ac108092ed12605b4ab925b7ad",
"assets/assets/Recocido.png": "fea942f58e7ddc93666723e99a06bf43",
"assets/assets/CorteConFlama.png": "4808c61d11f7c030795b72710a8a1596",
"assets/assets/Remachado.png": "e97d1ce9fef41ff7448d9c5d7441e29b",
"assets/assets/Estirado.png": "405154d243bfed662423b4be876464e7",
"assets/assets/Rolado.png": "e540fdc7d3a084884347b18f37e2a350",
"assets/assets/Termoformado.png": "4885b20e99f889114b4a41e92ce99e3b",
"assets/assets/Recocido.jpg": "120a4e171a2f0a303aadf3bbd0b1ca3b",
"assets/assets/Taladrado.png": "3dece742529e5920fe4ea9dbc3fd9ee3",
"assets/assets/Inyeccion.png": "aecde319002fb980bf52cc1d385bc621",
"assets/assets/Embutido.png": "80c88829d69b3d2f5e83f46936103e2d",
"assets/assets/Troquelado.png": "62f28700311e015d562750f092a0a95f",
"assets/assets/MoldeoPorCompresion.png": "1360adbcdde763130318a675c3682a21",
"assets/assets/Anodizado.jpg": "60839ce487f5a358aa5061d312ed867d",
"assets/assets/MoldeoPorTransferencia.png": "45435babac71752ba39bf8ee229af50b",
"assets/assets/Estampado.png": "c7843d9c5a2af0f10a778c011829ff6e",
"assets/assets/Revenido.jpg": "a06d8cb1ef780321eb4d836801665d7c",
"assets/assets/Galvanizado.png": "224907e915ed1c4fe425386fcc5a118f",
"assets/assets/Laminado.png": "2b613a8b6153141bbf7a2a61c8cc527b",
"assets/assets/Anodizado.png": "452f8751e39a6acaaa4e5fb488e9a84e",
"assets/assets/Punzonado.jpg": "cd04448591e752ff7f0038bc7714f884",
"assets/assets/Alodine.png": "14929bd95438f3505866a3c0115edacc",
"assets/assets/Guillotinado.png": "37ed21a122ba038fbf9d93167a67d350",
"assets/assets/Corrugado.png": "e34187c8bf7f3c545d157d040304a09a",
"assets/assets/Forjado.png": "fdba0f40787f4bcdfdf784f4d89a2241",
"assets/assets/FundicionCentrifuga.png": "da05b66d2f31562635f92d7b363332b0",
"assets/assets/Calandrado.png": "f233b7da5da2bc970e88472fcb2da5f9",
"assets/assets/LimpiezaConChorro.jpg": "526c0a402f64ad29e43b9031cb56f87d",
"assets/assets/PegadoConAdhesivos.png": "2e2fabed633c724cdc71b006fdbfc611",
"assets/assets/PegadoConAdhesivo.jpeg": "84c8ac18c0870f33f7f06c1c4e5fb373",
"assets/assets/Aserrado.png": "326f46d7fb8bff6b0ff13c79dd6a92b2",
"assets/AssetManifest.bin": "947f7ce9c2b142e7da5c9a80c8518eb2",
"assets/fonts/MaterialIcons-Regular.otf": "d13256f1e942d13ef3fc78bb34d39a54",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"main.dart.js": "b75627cd3e8116d9f9c1ac6b8460bb80"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
