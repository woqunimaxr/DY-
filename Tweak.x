#import <UIKit/UIKit.h>
#import <CaptainHook/CaptainHook.h>

@interface AWELongPressPanelManager : NSObject
- (BOOL)shouldShowModernLongPressPanel;
@end

__attribute__((constructor)) static void entry() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CHLoadLateClass(AWELongPressPanelManager);
        CHHook(1, AWELongPressPanelManager, shouldShowModernLongPressPanel);
    });
}

CHOptimizedMethod1(self, BOOL, AWELongPressPanelManager, shouldShowModernLongPressPanel) {
    return YES;
}