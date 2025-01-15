#import "Tweak.h"
%hook UIView
-(BOOL)isHidden{
NSString *className = NSStringFromClass([self class]);
NSRange range1 = [className rangeOfString:@"SmartCh"];
NSRange range2 = [className rangeOfString:@"TopBanner"];
NSRange range3 = [className rangeOfString:@"LineAdvertiseSDK2"];
if(range1.location != NSNotFound || range2.location != NSNotFound || range3.location != NSNotFound){
return YES;
} else {
return %orig;
}
}

-(CGRect)frame{
NSString *className = NSStringFromClass([self class]);
NSRange range1 = [className rangeOfString:@"SmartCh"];
NSRange range2 = [className rangeOfString:@"TopBanner"];
NSRange range3 = [className rangeOfString:@"LineAdvertiseSDK2"];
if(range1.location != NSNotFound || range2.location != NSNotFound || range3.location != NSNotFound){
return CGRectMake(0,0,0,0);
} else {
return %orig;
}
}

-(CGRect)bounds{
NSString *className = NSStringFromClass([self class]);
NSRange range1 = [className rangeOfString:@"SmartCh"];
NSRange range2 = [className rangeOfString:@"TopBanner"];
NSRange range3 = [className rangeOfString:@"LineAdvertiseSDK2"];
if(range1.location != NSNotFound || range2.location != NSNotFound || range3.location != NSNotFound){
return CGRectMake(0,0,0,0);
} else {
return %orig;
}
}

%end
