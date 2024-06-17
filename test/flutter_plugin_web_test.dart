import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_web/flutter_plugin_web.dart';
import 'package:flutter_plugin_web/flutter_plugin_web_platform_interface.dart';
import 'package:flutter_plugin_web/flutter_plugin_web_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPluginWebPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPluginWebPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPluginWebPlatform initialPlatform = FlutterPluginWebPlatform.instance;

  test('$MethodChannelFlutterPluginWeb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPluginWeb>());
  });

  test('getPlatformVersion', () async {
    FlutterPluginWeb flutterPluginWebPlugin = FlutterPluginWeb();
    MockFlutterPluginWebPlatform fakePlatform = MockFlutterPluginWebPlatform();
    FlutterPluginWebPlatform.instance = fakePlatform;

    expect(await flutterPluginWebPlugin.getPlatformVersion(), '42');
  });
}
