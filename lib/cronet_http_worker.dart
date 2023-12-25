
import 'dart:async';
import 'package:jni/jni.dart';
import 'package:unwired/unwired.dart';
import 'src/com/unwired/cronet_http_worker/jni_bindings.dart';


class CronetHttpWorker extends HttpWorker {
  CronetHttpWorker() {
    Jni.initDLApi();
  }

  late final CronetClient _client;

  Future<void> init() async {
    _client = CronetClient();
    final context = Context.fromRef(Jni.getCurrentActivity());
    await _client.initialise(context);
  }

  Future<void> ping(String baseUrl) async {
    _client.get0(("$baseUrl/v1/ping").toJString());
  }

  @override
  destroy() {
    // TODO: implement destroy
    throw UnimplementedError();
  }

  @override
  Future killRequest(int id) {
    // TODO: implement killRequest
    throw UnimplementedError();
  }

  @override
  (Completer<Response<T>>, {Object? meta}) processRequest<T>({required int id, required RequestMethod method, required Uri url, Map<String, String>? header, Object? body, Parser<T>? parser, Map<String, Object?>? meta}) {
    throw UnimplementedError();
  }
}
