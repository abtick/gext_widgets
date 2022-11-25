#ifndef FLUTTER_PLUGIN_GEXT_WIDGETS_PLUGIN_H_
#define FLUTTER_PLUGIN_GEXT_WIDGETS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace gext_widgets {

class GextWidgetsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GextWidgetsPlugin();

  virtual ~GextWidgetsPlugin();

  // Disallow copy and assign.
  GextWidgetsPlugin(const GextWidgetsPlugin&) = delete;
  GextWidgetsPlugin& operator=(const GextWidgetsPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace gext_widgets

#endif  // FLUTTER_PLUGIN_GEXT_WIDGETS_PLUGIN_H_
