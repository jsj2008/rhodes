
#import "NativeToolbarSingleton.h"

extern void rho_create_toolbar(NSArray* items, NSDictionary* properties);
extern BOOL nativebar_started();
extern void remove_native_toolbar();

@implementation NativeToolbarSingleton



-(void) create:(NSArray*)toolbarElements toolBarProperties:(NSDictionary*)toolBarProperties {
    if (![toolbarElements isKindOfClass:[NSArray class]]) {
        NSLog(@"Toolbar.create ERROR - elements parameter should be Array !");
        return;
    }
    rho_create_toolbar(toolbarElements, toolBarProperties);
}

-(void) remove {
    remove_native_toolbar();
}

-(void) isCreated:(id<IMethodResult>)methodResult {
    [methodResult setResult:[NSNumber numberWithBool:nativebar_started()]];
}




@end