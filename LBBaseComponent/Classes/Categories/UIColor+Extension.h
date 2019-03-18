//
//  UIColor+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extension)

/**
 十六进制创建color
 
 @param color 十六进制色值
 @return 颜色对象
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 十六进制创建color
 
 @param color 十六进制色值
 @param alpha 透明度:0-1
 @return 颜色对象
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
