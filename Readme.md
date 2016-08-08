AYA5Worker - WebWorker SHIORI subsystem AYA5
==========================

Install
--------------------------
```
npm install aya5worker.js
```

Usage
--------------------------
node.js
```javascript
var ShioriLoader = require("shioriloader");
var AYA5Worker = require("aya5worker.js");
```

browser
```javascript
<script src="browserfs.js"></script>
<script src="shioriloader.js"></script>
<script src="aya5worker-webworker-all.js"></script>
```

then
```javascript
var shiori = new AYA5Worker();
shiori.load(dirpath).then(...);

// or

ShioriLoader.shiori_detectors = [
  function(fs, dirpath, shiories) {
    return new Promise(function(resolve) { resolve(new shiories.aya5(fs)) });
  },
];

ShioriLoader
  .detect_shiori(fs, dirpath)
  .then((shiori) => shiori.load(dirpath))
  .then(...);
```

License
--------------------------

This is released under [MIT License](http://narazaka.net/license/MIT?2016).
