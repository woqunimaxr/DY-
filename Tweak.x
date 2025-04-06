#import <UIKit/UIKit.h>

%hook AWELongPressPanelManager
- (BOOL)shouldShowModernLongPressPanel {
    return YES;
	}
%end