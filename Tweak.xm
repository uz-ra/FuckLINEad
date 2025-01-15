#import "Tweak.h"
%hook UIView
-(BOOL)isHidden{
NSString *className = NSStringFromClass([self class]);
NSRange range1 = [className rangeOfString:@"SmartCh"];
NSRange range2 = [className rangeOfString:@"TopBanner"];
if(range1.location != NSNotFound || range2.location != NSNotFound){
return YES;
} else {
return %orig;
}
}
%end