
import 'gext_widgets_platform_interface.dart';

class GextWidgets {
  Future<String?> getPlatformVersion() {
    return GextWidgetsPlatform.instance.getPlatformVersion();
  }
}
