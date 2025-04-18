#import <UIKit/UIKit.h>

%group needDelay
%hook AWELongPressPanelManager
- (BOOL)shouldShowModernLongPressPanel {
    return YES;
}
%end
%hook AWELongPressPanelDataManager
+ (BOOL)enableModernLongPressPanelConfigWithSceneIdentifier:(id)arg1 {
    return YES;
}
%end
%hook AWELongPressPanelABSettings
+ (NSUInteger)modernLongPressPanelStyleMode {
    return 1;
}
%end
%hook AWEModernLongPressPanelUIConfig
+ (NSUInteger)modernLongPressPanelStyleMode {
    return 1;
}
%end
%end
%ctor {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        %init(needDelay);
    });
}