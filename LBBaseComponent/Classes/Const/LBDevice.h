//
//  LBDevice.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, LBDeviceVersion)
{
    /*** iPhone ***/
    LBDeviceVersioniPhone4,
    LBDeviceVersioniPhone4S,
    LBDeviceVersioniPhone5,
    LBDeviceVersioniPhone5C,
    LBDeviceVersioniPhone5S,
    LBDeviceVersioniPhone6,
    LBDeviceVersioniPhone6Plus,
    LBDeviceVersioniPhone6S,
    LBDeviceVersioniPhone6SPlus,
    LBDeviceVersioniPhoneSE,
    LBDeviceVersioniPhone7,
    LBDeviceVersioniPhone7Plus,
    LBDeviceVersioniPhone8,
    LBDeviceVersioniPhone8Plus,
    LBDeviceVersioniPhoneX,
    LBDeviceVersioniPhoneXS,
    LBDeviceVersioniPhoneXS_Max,
    LBDeviceVersioniPhoneXR,
    
    /*** iPad ***/
    LBDeviceVersioniPad1,
    LBDeviceVersioniPad2,
    LBDeviceVersioniPad3,
    LBDeviceVersioniPad4,
    LBDeviceVersioniPad5,
    LBDeviceVersioniPad6,
    LBDeviceVersioniPadAir,
    LBDeviceVersioniPadAir2,
    LBDeviceVersioniPadMini,
    LBDeviceVersioniPadMini2,
    LBDeviceVersioniPadMini3,
    LBDeviceVersioniPadMini4,
    LBDeviceVersioniPadPro9_7Inch,
    LBDeviceVersioniPadPro10_5Inch,
    LBDeviceVersioniPadPro12_9Inch,
    
    /*** iPod ***/
    LBDeviceVersioniPodTouch1Gen,
    LBDeviceVersioniPodTouch2Gen,
    LBDeviceVersioniPodTouch3Gen,
    LBDeviceVersioniPodTouch4Gen,
    LBDeviceVersioniPodTouch5Gen,
    LBDeviceVersioniPodTouch6Gen,
    
    /*** simulator ***/
    LBDeviceVersionSimulator,
    
    /*** unknown ***/
    LBDeviceVersionUnknown,
};

@interface LBDevice : NSObject

//是否是iPhoneX系列、是否是模拟器
+ (BOOL)isiPhoneX;
+ (BOOL)isSimulator;
//基于模拟器获取当前设备型号（包含非模拟器）
+ (LBDeviceVersion)currentVersionOnSimulator;
//获取当前设备型号
+ (LBDeviceVersion)currentVersion;
//获取设备型号版本
+ (LBDeviceVersion)getVersionWithCode:(NSString *)code;
//获取设备型号字符串，截止到2018-07
+ (NSString *)getDeviceModel;
//获取设备iOS版本
+ (NSString *)getDeviceiOSVersion;
//获取设备分辨率
+ (NSString *)getDeviceResolution;
//获取设备码
+ (NSString *)getDeviceKey;
//获取用户自定义名称
+ (NSString *)getDeviceUserName;

@end

NS_ASSUME_NONNULL_END
