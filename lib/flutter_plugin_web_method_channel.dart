import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_plugin_web_platform_interface.dart';

/// An implementation of [FlutterPluginWebPlatform] that uses method channels.
class MethodChannelFlutterPluginWeb extends FlutterPluginWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_plugin_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
