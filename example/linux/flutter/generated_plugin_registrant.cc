//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <gext_widgets/gext_widgets_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) gext_widgets_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GextWidgetsPlugin");
  gext_widgets_plugin_register_with_registrar(gext_widgets_registrar);
}
