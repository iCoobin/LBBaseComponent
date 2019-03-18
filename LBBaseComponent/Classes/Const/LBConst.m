//
//  LBConst.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBConst.h"
#import "LBDevice.h"

@implementation LBConst

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

@end
