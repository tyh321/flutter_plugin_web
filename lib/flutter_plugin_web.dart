import 'flutter_plugin_web_platform_interface.dart';
import 'dart:js_interop';

@JS()
external getMiniLocation();

class FlutterPluginWeb {
  Future<String?> getPlatformVersion() {
    return FlutterPluginWebPlatform.instance.getPlatformVersion();
  }

  static final miniLocationPromise = getMiniLocation();
}
