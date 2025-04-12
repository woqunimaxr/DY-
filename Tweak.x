#import <UIKit/UIKit.h>
#import <CaptainHook/CaptainHook.h>

CHDeclareClass(AWELongPressPanelManager);

CHOptimizedMethod0(self, BOOL, AWELongPressPanelManager, shouldShowModernLongPressPanel) {
    return YES;
}

__attribute__((constructor)) static void entry() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CHLoadLateClass(AWELongPressPanelManager);
        CHHook0(AWELongPressPanelManager, shouldShowModernLongPressPanel);
    });
}