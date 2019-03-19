//
//  UILabel+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Extension)

/**
 便利构建器

 @param text 文本
 @param font 字体
 @param color 颜色
 @return label
 */
+ (UILabel *)create:(NSString * __nullable)text font:(UIFont * __nullable)font color:(UIColor * __nullable)color;

/**
 获取文本宽度

 @return 宽度
 */
- (CGFloat)widthForSizeToFit;

/**
 获取文本高度

 @param maxWidth 限宽
 @return 高度
 */
- (CGFloat)heightForSizeToFitWithMaxWidth:(CGFloat)maxWidth;

@end

NS_ASSUME_NONNULL_END
