import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gext_widgets_method_channel.dart';

abstract class GextWidgetsPlatform extends PlatformInterface {
  /// Constructs a GextWidgetsPlatform.
  GextWidgetsPlatform() : super(token: _token);

  static final Object _token = Object();

  static GextWidgetsPlatform _instance = MethodChannelGextWidgets();

  /// The default instance of [GextWidgetsPlatform] to use.
  ///
  /// Defaults to [MethodChannelGextWidgets].
  static GextWidgetsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GextWidgetsPlatform] when
  /// they register themselves.
  static set instance(GextWidgetsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
