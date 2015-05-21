TARGET_JS = aya5worker.js
SHIORI_NAME = aya5
SHIORI_WORKER_CLASS = AYA5WorkerClient
SHIORI_CLASS = AYA5

SHIORI = node_modules/aya5.js/aya5_240/aya5.js
NATIVESHIORI = node_modules/nativeshiori/nativeshiori.js
ENCODING = node_modules/encoding-japanese/encoding.min.js
PROMISE = node_modules/bluebird/js/browser/bluebird.min.js
WORKERSERVER = node_modules/WorkerClientServer/WorkerServer.js
NATIVESHIORIWORKERSERVER = node_modules/NativeShioriWorker/NativeShioriWorkerServer.js

all: $(TARGET_JS)

$(TARGET_JS): client.coffee server.coffee $(SHIORI) $(NATIVESHIORI) $(ENCODING) $(PROMISE) $(WORKERSERVER) $(NATIVESHIORIWORKERSERVER)
	coffee make_worker_script_auto.coffee $^ $(SHIORI_NAME) $(SHIORI_WORKER_CLASS) $(SHIORI_CLASS) > $@

clean:
	rm *.js *.map

