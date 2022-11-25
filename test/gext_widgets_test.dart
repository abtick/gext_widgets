import 'package:flutter_test/flutter_test.dart';
import 'package:gext_widgets/gext_widgets.dart';
import 'package:gext_widgets/gext_widgets_platform_interface.dart';
import 'package:gext_widgets/gext_widgets_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGextWidgetsPlatform
    with MockPlatformInterfaceMixin
    implements GextWidgetsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GextWidgetsPlatform initialPlatform = GextWidgetsPlatform.instance;

  test('$MethodChannelGextWidgets is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGextWidgets>());
  });

  test('getPlatformVersion', () async {
    GextWidgets gextWidgetsPlugin = GextWidgets();
    MockGextWidgetsPlatform fakePlatform = MockGextWidgetsPlatform();
    GextWidgetsPlatform.instance = fakePlatform;

    expect(await gextWidgetsPlugin.getPlatformVersion(), '42');
  });
}
