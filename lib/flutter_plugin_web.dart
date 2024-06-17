import 'flutter_plugin_web_platform_interface.dart';
import 'dart:js_interop';

class FlutterPluginWeb {
  @JS()
  external getMiniLocation();

  Future<String?> getPlatformVersion() {
    return FlutterPluginWebPlatform.instance.getPlatformVersion();
  }
}
