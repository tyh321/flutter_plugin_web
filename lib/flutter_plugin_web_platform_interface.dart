import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_plugin_web_method_channel.dart';

abstract class FlutterPluginWebPlatform extends PlatformInterface {
  /// Constructs a FlutterPluginWebPlatform.
  FlutterPluginWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPluginWebPlatform _instance = MethodChannelFlutterPluginWeb();

  /// The default instance of [FlutterPluginWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPluginWeb].
  static FlutterPluginWebPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPluginWebPlatform] when
  /// they register themselves.
  static set instance(FlutterPluginWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
