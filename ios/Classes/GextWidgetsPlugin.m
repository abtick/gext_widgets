#import "GextWidgetsPlugin.h"
#if __has_include(<gext_widgets/gext_widgets-Swift.h>)
#import <gext_widgets/gext_widgets-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gext_widgets-Swift.h"
#endif

@implementation GextWidgetsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGextWidgetsPlugin registerWithRegistrar:registrar];
}
@end
