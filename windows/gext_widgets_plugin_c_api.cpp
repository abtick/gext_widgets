#include "include/gext_widgets/gext_widgets_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "gext_widgets_plugin.h"

void GextWidgetsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  gext_widgets::GextWidgetsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
