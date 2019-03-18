//
//  LBConst.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#ifndef LBConst_h
#define LBConst_h

#import "LBDevice.h"
#import "LBTheme.h"

#endif /* LBConst_h */

@interface LBConst : NSObject

//宽、高、像素宽度
+ (CGFloat)screenWidth;
+ (CGFloat)screenHeight;
+ (CGFloat)pixelWidth;
//状态条高度、顶部刘海高度、导航栏高度、标签栏高度、底部安全区域、
+ (CGFloat)statusBarHeight;
+ (CGFloat)topLiuHeight;
+ (CGFloat)navBarHeight;
+ (CGFloat)tabBarHeight;
+ (CGFloat)safeAreaBottomHeight;
//是否是iPhoneX系列、是否是模拟器
+ (BOOL)isiPhoneX;
+ (BOOL)isSimulator;

//获取设备型号字符串
+ (NSString *)getDeviceModel;
//获取设备iOS版本
+ (NSString *)getDeviceiOSVersion;
//获取设备分辨率
+ (NSString *)getDeviceResolution;
//获取设备码
+ (NSString *)getDeviceKey;
//获取用户自定义名称
+ (NSString *)getDeviceUserName;

//当前app版本
+ (NSString *)currentAppVersion;
//当前编译版本
+ (NSString *)currentAppBuildNumber;
//当前app Bundle Identifier
+ (NSString *)currentAppBundleIdentifier;

//主题样式
+ (void)setTheme:(id<LBThemeProtocol>)theme;
+ (UIColor *)mainColor;
+ (UIColor *)bgColor;
+ (UIColor *)fontColor0;
+ (UIColor *)fontColor1;
+ (UIColor *)fontColor2;
+ (UIColor *)fontColor3;
+ (UIColor *)fontColor4;

+ (CGFloat)fontSize1;
+ (CGFloat)fontSize2;
+ (CGFloat)fontSize3;
+ (CGFloat)fontSize4;

@end
