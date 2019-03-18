//
//  LBDevice.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBDevice.h"
#import <sys/utsname.h>

@implementation LBDevice

+ (BOOL)isiPhoneX{
    LBDeviceVersion version = [self currentVersionOnSimulator];
    switch (version) {
        case LBDeviceVersioniPhoneX:
        case LBDeviceVersioniPhoneXS:
        case LBDeviceVersioniPhoneXS_Max:
        case LBDeviceVersioniPhoneXR:
            return YES;
        default:
            return NO;
    }
}
+ (BOOL)isSimulator{
    return [self currentVersion] == LBDeviceVersionSimulator;
}
+ (LBDeviceVersion)currentVersionOnSimulator{
    LBDeviceVersion version = [self currentVersion];
    if (LBDeviceVersionSimulator == version) {
        NSString *modelIdentifier = NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];
        return [self getVersionWithCode:modelIdentifier];
    }else{
        return version;
    }
}

+ (LBDeviceVersion)currentVersion{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [self getVersionWithCode:deviceString];
}

+ (LBDeviceVersion)getVersionWithCode:(NSString *)code {
    
    if ([code isEqualToString:@"iPhone3,1"] ||
        [code isEqualToString:@"iPhone3,2"]||
        [code isEqualToString:@"iPhone3,3"]) {
        return LBDeviceVersioniPhone4;
    }else if ([code isEqualToString:@"iPhone4,1"] ||
              [code isEqualToString:@"iPhone4,2"] ||
              [code isEqualToString:@"iPhone4,3"]) {
        return LBDeviceVersioniPhone4S;
    }else if ([code isEqualToString:@"iPhone5,1"] ||
              [code isEqualToString:@"iPhone5,2"]){
        return LBDeviceVersioniPhone5;
    }else if ([code isEqualToString:@"iPhone5,3"] ||
              [code isEqualToString:@"iPhone5,4"]){
        return LBDeviceVersioniPhone5C;
    }else if ([code isEqualToString:@"iPhone6,1"] ||
              [code isEqualToString:@"iPhone6,2"]){
        return LBDeviceVersioniPhone5S;
    }else if ([code isEqualToString:@"iPhone7,2"]){
        return LBDeviceVersioniPhone6;
    }else if ([code isEqualToString:@"iPhone7,1"]){
        return LBDeviceVersioniPhone6Plus;
    }else if ([code isEqualToString:@"iPhone8,1"]){
        return LBDeviceVersioniPhone6S;
    }else if ([code isEqualToString:@"iPhone8,2"]){
        return LBDeviceVersioniPhone6SPlus;
    }else if ([code isEqualToString:@"iPhone8,3"] ||
              [code isEqualToString:@"iPhone8,4"]){
        return LBDeviceVersioniPhoneSE;
    }else if ([code isEqualToString:@"iPhone9,1"] ||
              [code isEqualToString:@"iPhone9,3"]){
        return LBDeviceVersioniPhone7;
    }else if ([code isEqualToString:@"iPhone9,2"] ||
              [code isEqualToString:@"iPhone9,4"]){
        return LBDeviceVersioniPhone7Plus;
    }else if ([code isEqualToString:@"iPhone10,1"] ||
              [code isEqualToString:@"iPhone10,4"]){
        return LBDeviceVersioniPhone8;
    }else if ([code isEqualToString:@"iPhone10,2"] ||
              [code isEqualToString:@"iPhone10,5"]){
        return LBDeviceVersioniPhone8Plus;
    }else if ([code isEqualToString:@"iPhone10,3"] ||
              [code isEqualToString:@"iPhone10,6"]){
        return LBDeviceVersioniPhoneX;
    }else if ([code isEqualToString:@"iPhone11,2"]){
        return LBDeviceVersioniPhoneXS;
    }else if ([code isEqualToString:@"iPhone11,4"] ||
              [code isEqualToString:@"iPhone11,6"]){
        return LBDeviceVersioniPhoneXS_Max;
    }else if ([code isEqualToString:@"iPhone11,8"]){
        return LBDeviceVersioniPhoneXR;
    }else if ([code isEqualToString:@"iPad1,1"] ||
              [code isEqualToString:@"iPad1,2"]){
        return LBDeviceVersioniPad1;
    }else if ([code isEqualToString:@"iPad2,1"] ||
              [code isEqualToString:@"iPad2,2"] ||
              [code isEqualToString:@"iPad2,3"] ||
              [code isEqualToString:@"iPad2,4"]){
        return LBDeviceVersioniPad2;
    }else if ([code isEqualToString:@"iPad3,1"] ||
              [code isEqualToString:@"iPad3,2"] ||
              [code isEqualToString:@"iPad3,3"]){
        return LBDeviceVersioniPad3;
    }else if ([code isEqualToString:@"iPad3,4"] ||
              [code isEqualToString:@"iPad3,5"] ||
              [code isEqualToString:@"iPad3,6"]){
        return LBDeviceVersioniPad4;
    }else if ([code isEqualToString:@"iPad6,11"] ||
              [code isEqualToString:@"iPad6,12"]){
        return LBDeviceVersioniPad5;
    }else if ([code isEqualToString:@"iPad7,5"] ||
              [code isEqualToString:@"iPad7,6"]){
        return LBDeviceVersioniPad6;
    }else if ([code isEqualToString:@"iPad4,1"] ||
              [code isEqualToString:@"iPad4,2"] ||
              [code isEqualToString:@"iPad4,3"]){
        return LBDeviceVersioniPadAir;
    }else if ([code isEqualToString:@"iPad5,3"] ||
              [code isEqualToString:@"iPad5,4"]){
        return LBDeviceVersioniPadAir2;
    }else if ([code isEqualToString:@"iPad2,5"] ||
              [code isEqualToString:@"iPad2,6"] ||
              [code isEqualToString:@"iPad2,7"]){
        return LBDeviceVersioniPadMini;
    }else if ([code isEqualToString:@"iPad4,4"] ||
              [code isEqualToString:@"iPad4,5"] ||
              [code isEqualToString:@"iPad4,6"]){
        return LBDeviceVersioniPadMini2;
    }else if ([code isEqualToString:@"iPad4,7"] ||
              [code isEqualToString:@"iPad4,8"] ||
              [code isEqualToString:@"iPad4,9"]){
        return LBDeviceVersioniPadMini3;
    }else if ([code isEqualToString:@"iPad5,1"] ||
              [code isEqualToString:@"iPad5,2"]){
        return LBDeviceVersioniPadMini4;
    }else if ([code isEqualToString:@"iPad6,7"] ||
              [code isEqualToString:@"iPad6,8"] ||
              [code isEqualToString:@"iPad7,1"] ||
              [code isEqualToString:@"iPad7,2"]){
        return LBDeviceVersioniPadPro12_9Inch;
    }else if ([code isEqualToString:@"iPad7,3"] ||
              [code isEqualToString:@"iPad7,4"]){
        return LBDeviceVersioniPadPro10_5Inch;
    }else if ([code isEqualToString:@"iPad6,3"] ||
              [code isEqualToString:@"iPad6,4"]){
        return LBDeviceVersioniPadPro9_7Inch;
    }else if ([code isEqualToString:@"iPod1,1"]){
        return LBDeviceVersioniPodTouch1Gen;
    }else if ([code isEqualToString:@"iPod2,1"]){
        return LBDeviceVersioniPodTouch2Gen;
    }else if ([code isEqualToString:@"iPod3,1"]){
        return LBDeviceVersioniPodTouch3Gen;
    }else if ([code isEqualToString:@"iPod4,1"]){
        return LBDeviceVersioniPodTouch4Gen;
    }else if ([code isEqualToString:@"iPod5,1"]){
        return LBDeviceVersioniPodTouch5Gen;
    }else if ([code isEqualToString:@"iPod7,1"]){
        return LBDeviceVersioniPodTouch6Gen;
    }else if ([code isEqualToString:@"i386"] ||
              [code isEqualToString:@"x86_64"]){
        return LBDeviceVersionSimulator;
    }
    return LBDeviceVersionUnknown;
}

//获取设备型号，截止到2018-07
+ (NSString *)getDeviceModel {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    //iPhone
    if ([deviceString isEqualToString:@"iPhone1,1"])    return @"iPhone";
    if ([deviceString isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([deviceString isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([deviceString isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([deviceString isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([deviceString isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    if ([deviceString isEqualToString:@"iPhone5,3"])    return @"iPhone 5c";
    if ([deviceString isEqualToString:@"iPhone5,4"])    return @"iPhone 5c";
    if ([deviceString isEqualToString:@"iPhone6,1"])    return @"iPhone 5s";
    if ([deviceString isEqualToString:@"iPhone6,2"])    return @"iPhone 5s";
    if ([deviceString isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([deviceString isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([deviceString isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([deviceString isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([deviceString isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    if ([deviceString isEqualToString:@"iPhone9,1"])    return @"iPhone 7";
    if ([deviceString isEqualToString:@"iPhone9,3"])    return @"iPhone 7";
    if ([deviceString isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:@"iPhone10,1"])   return @"iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,4"])   return @"iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,2"])   return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,5"])   return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,3"])   return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone10,6"])   return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone11,2"])   return @"iPhone XS";
    if ([deviceString isEqualToString:@"iPhone11,4"])   return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,6"])   return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,8"])   return @"iPhone XR";
    
    //iPod
    if ([deviceString isEqualToString:@"iPod1,1"])      return @"iPod Touch";
    if ([deviceString isEqualToString:@"iPod2,1"])      return @"iPod touch (2nd generation)";
    if ([deviceString isEqualToString:@"iPod3,1"])      return @"iPod touch (3rd generation)";
    if ([deviceString isEqualToString:@"iPod4,1"])      return @"iPod touch (4th generation)";
    if ([deviceString isEqualToString:@"iPod5,1"])      return @"iPod touch (5th generation)";
    if ([deviceString isEqualToString:@"iPod7,1"])      return @"iPod touch (6th generation)";
    //iPad
    if ([deviceString isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([deviceString isEqualToString:@"iPad2,1"])      return @"iPad 2";
    if ([deviceString isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([deviceString isEqualToString:@"iPad2,3"])      return @"iPad 2";
    if ([deviceString isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([deviceString isEqualToString:@"iPad3,1"])      return @"iPad (3rd generation)";
    if ([deviceString isEqualToString:@"iPad3,2"])      return @"iPad (3rd generation)";
    if ([deviceString isEqualToString:@"iPad3,3"])      return @"iPad (3rd generation)";
    if ([deviceString isEqualToString:@"iPad3,4"])      return @"iPad (4th generation)";
    if ([deviceString isEqualToString:@"iPad3,5"])      return @"iPad (4th generation)";
    if ([deviceString isEqualToString:@"iPad3,6"])      return @"iPad (4th generation)";
    if ([deviceString isEqualToString:@"iPad4,1"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad4,2"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad4,3"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad6,7"])      return @"iPad Pro (12.9-inch)";
    if ([deviceString isEqualToString:@"iPad6,8"])      return @"iPad Pro (12.9-inch)";
    if ([deviceString isEqualToString:@"iPad6,3"])      return @"iPad Pro (9.7-inch)";
    if ([deviceString isEqualToString:@"iPad6,4"])      return @"iPad Pro (9.7-inch)";
    if ([deviceString isEqualToString:@"iPad6,11"])     return @"iPad (5th generation)";
    if ([deviceString isEqualToString:@"iPad6,12"])     return @"iPad (5th generation)";
    if ([deviceString isEqualToString:@"iPad7,1"])      return @"iPad Pro (12.9-inch, 2nd generation)";
    if ([deviceString isEqualToString:@"iPad7,2"])      return @"iPad Pro (12.9-inch, 2nd generation)";
    if ([deviceString isEqualToString:@"iPad7,3"])      return @"iPad Pro (10.5-inch)";
    if ([deviceString isEqualToString:@"iPad7,4"])      return @"iPad Pro (10.5-inch)";
    if ([deviceString isEqualToString:@"iPad7,5"])      return @"iPad (6th generation)";
    if ([deviceString isEqualToString:@"iPad7,6"])      return @"iPad (6th generation)";
    //iPad mini
    if ([deviceString isEqualToString:@"iPad2,5"])      return @"iPad mini";
    if ([deviceString isEqualToString:@"iPad2,6"])      return @"iPad mini";
    if ([deviceString isEqualToString:@"iPad2,7"])      return @"iPad mini";
    if ([deviceString isEqualToString:@"iPad4,4"])      return @"iPad mini 2";
    if ([deviceString isEqualToString:@"iPad4,5"])      return @"iPad mini 2";
    if ([deviceString isEqualToString:@"iPad4,6"])      return @"iPad mini 2";
    if ([deviceString isEqualToString:@"iPad4,7"])      return @"iPad mini 3";
    if ([deviceString isEqualToString:@"iPad4,8"])      return @"iPad mini 3";
    if ([deviceString isEqualToString:@"iPad4,9"])      return @"iPad mini 3";
    if ([deviceString isEqualToString:@"iPad5,1"])      return @"iPad mini 4";
    if ([deviceString isEqualToString:@"iPad5,2"])      return @"iPad mini 4";
    //Simulator
    if ([deviceString isEqualToString:@"i386"])         return @"iOS Simulator";
    if ([deviceString isEqualToString:@"x86_64"])       return @"iOS Simulator";
    return deviceString;
}

//获取设备iOS版本
+ (NSString *)getDeviceiOSVersion {
    NSString *deviceVer = [NSString stringWithFormat:@"%@",[[UIDevice currentDevice] systemVersion]];
    return deviceVer;
}

//获取设备分辨率
+ (NSString *)getDeviceResolution {
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat width = rect.size.width * scale;
    CGFloat height = rect.size.height * scale;
    return [NSString stringWithFormat:@"%d*%d",(int)height,(int)width];
}

//获取设备码
+ (NSString *)getDeviceKey {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return deviceString;
}

//获取用户自定义名称
+ (NSString *)getDeviceUserName {
    NSString *userName = [[[UIDevice currentDevice] name] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return userName;
}

@end
