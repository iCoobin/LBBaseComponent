//
//  UILabel+Extension.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/19.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

/**
 便利构建器
 
 @param text 文本
 @param font 字体
 @param color 颜色
 @return label
 */
+ (UILabel *)create:(NSString * __nullable)text font:(UIFont * __nullable)font color:(UIColor * __nullable)color{
    UILabel *label = [[UILabel alloc] init];
    if (text) {
        label.text = text;
    }
    if (font) {
        label.font = font;
    }
    if (color) {
        label.textColor = color;
    }
    return label;
}

/**
 获取文本宽度
 
 @return 宽度
 */
- (CGFloat)widthForSizeToFit{
    UILabel *label = [UILabel create:self.text font:self.font color:self.textColor];
    label.attributedText = self.attributedText;
    [label sizeToFit];
    return label.frame.size.width;
}

/**
 获取文本高度
 
 @param maxWidth 限宽
 @return 高度
 */
- (CGFloat)heightForSizeToFitWithMaxWidth:(CGFloat)maxWidth{
    UILabel *label = [UILabel create:self.text font:self.font color:self.textColor];
    label.attributedText = self.attributedText;
    CGRect frame = label.frame;
    frame.size.width = maxWidth;
    label.frame = frame;
    [label sizeToFit];
    return label.frame.size.height;
}


@end
