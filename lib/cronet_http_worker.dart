
import 'dart:async';
import 'package:jni/jni.dart';
import 'src/com/unwired/cronet_http_worker/jni_bindings.dart';


class HttpCronetClient {
  HttpCronetClient() {
    Jni.initDLApi();
  }

  late final CronetClient _client;

  Future<void> init() async {
    _client = CronetClient();
    final context = Context.fromRef(Jni.getCachedApplicationContext());
    await _client.initialise(context);
  }

  Future<void> ping() async {
    _client.get0("https://172.17.43.221:3100/v1/ping".toJString());
  }

}
