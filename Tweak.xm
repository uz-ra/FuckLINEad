#import "Tweak.h"
%hook UIView
-(BOOL)isHidden{
NSString *className = NSStringFromClass([self class]);
NSRange range1 = [className rangeOfString:@"SmartCh"];
if(range1.location != NSNotFound){
return YES;
} else {
return %orig;
}
}
%end