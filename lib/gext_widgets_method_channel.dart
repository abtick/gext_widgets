import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gext_widgets_platform_interface.dart';

/// An implementation of [GextWidgetsPlatform] that uses method channels.
class MethodChannelGextWidgets extends GextWidgetsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gext_widgets');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
