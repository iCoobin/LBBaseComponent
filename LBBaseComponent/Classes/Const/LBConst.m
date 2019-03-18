//
//  LBConst.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBConst.h"
#import "LBDevice.h"

@interface LBConst()

@property (nonatomic,strong) id<LBThemeProtocol> theme;

@end

@implementation LBConst

+ (instancetype)share{
    static LBConst *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[LBConst alloc] init];
        instance.theme = [[LBTheme alloc] init];
    });
    return instance;
}

+ (void)setTheme:(id<LBThemeProtocol>)theme{
    [LBConst share].theme = theme;
}

+ (CGFloat)screenWidth{
    return UIScreen.mainScreen.bounds.size.width;
}
+ (CGFloat)screenHeight{
    return UIScreen.mainScreen.bounds.size.height;
}
+ (CGFloat)pixelWidth{
    return (1.0/UIScreen.mainScreen.scale);
}
//
+ (CGFloat)statusBarHeight{
    return [self isiPhoneX] ? 44.0 : 20.0;
}
+ (CGFloat)topLiuHeight{
    return [self isiPhoneX] ? 30.0 : 0.0;
}
+ (CGFloat)navBarHeight{
    return [self isiPhoneX] ? 88.0 : 49.0;
}
+ (CGFloat)tabBarHeight{
    return [self isiPhoneX] ? 83.0 : 49.0;
}
+ (CGFloat)safeAreaBottomHeight{
    return [self isiPhoneX] ? 34.0 : 0.0;
}
//
+ (BOOL)isiPhoneX{
    return [LBDevice isiPhoneX];
}
+ (BOOL)isSimulator{
    return [LBDevice isSimulator];
}
//获取设备型号字符串
+ (NSString *)getDeviceModel{
    return [LBDevice getDeviceModel];
}
//获取设备iOS版本
+ (NSString *)getDeviceiOSVersion{
    return [LBDevice getDeviceiOSVersion];
}
//获取设备分辨率
+ (NSString *)getDeviceResolution{
    return [LBDevice getDeviceResolution];
}
//获取设备码
+ (NSString *)getDeviceKey{
    return [LBDevice getDeviceKey];
}
//获取用户自定义名称
+ (NSString *)getDeviceUserName{
    return [LBDevice getDeviceUserName];
}

//当前app版本
+ (NSString *)currentAppVersion{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    return [infoDictionary objectForKey:@"CFBundleShortVersionString"];
}
//当前编译版本
+ (NSString *)currentAppBuildNumber{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    return [infoDictionary objectForKey:@"CFBundleVersion"];
}
//当前app id
+ (NSString *)currentAppBundleIdentifier{
    return [[NSBundle mainBundle] bundleIdentifier];
}

+ (UIColor *)mainColor{
    return [LBConst share].theme.mainColor;
}
+ (UIColor *)bgColor{
    return [LBConst share].theme.bgColor;
}
+ (UIColor *)fontColor0{
    return [LBConst share].theme.fontColor0;
}
+ (UIColor *)fontColor1{
    return [LBConst share].theme.fontColor1;
}
+ (UIColor *)fontColor2{
    return [LBConst share].theme.fontColor2;
}
+ (UIColor *)fontColor3{
    return [LBConst share].theme.fontColor3;
}
+ (UIColor *)fontColor4{
    return [LBConst share].theme.fontColor4;
}

+ (CGFloat)fontSize1{
    return [LBConst share].theme.fontSize1;
}
+ (CGFloat)fontSize2{
    return [LBConst share].theme.fontSize2;
}
+ (CGFloat)fontSize3{
    return [LBConst share].theme.fontSize3;
}
+ (CGFloat)fontSize4{
    return [LBConst share].theme.fontSize4;
}

@end
