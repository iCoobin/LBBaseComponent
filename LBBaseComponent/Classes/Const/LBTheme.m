//
//  LBTheme.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBTheme.h"

@interface LBDefaultTheme ()

@property (nonatomic, strong) UIColor *mainColor;
@property (nonatomic, strong) UIColor *bgColor;

@property (nonatomic, strong) UIColor *fontColor0;
@property (nonatomic, strong) UIColor *fontColor1;
@property (nonatomic, strong) UIColor *fontColor2;
@property (nonatomic, strong) UIColor *fontColor3;
@property (nonatomic, strong) UIColor *fontColor4;

@property (nonatomic, assign) CGFloat fontSize1;
@property (nonatomic, assign) CGFloat fontSize2;
@property (nonatomic, assign) CGFloat fontSize3;
@property (nonatomic, assign) CGFloat fontSize4;

@end

@implementation LBDefaultTheme

- (UIColor *)mainColor{
    return UIColor.redColor;
}
- (UIColor *)bgColor{
    return UIColor.whiteColor;
}
- (UIColor *)fontColor0{
    return [self fontColorWithLevel:0];
}
- (UIColor *)fontColor1{
    return [self fontColorWithLevel:1];
}
- (UIColor *)fontColor2{
    return [self fontColorWithLevel:2];
}
- (UIColor *)fontColor3{
    return [self fontColorWithLevel:3];
}
- (UIColor *)fontColor4{
    return [self fontColorWithLevel:4];
}
- (UIColor *)fontColorWithLevel:(CGFloat)level{
    return [[UIColor alloc] initWithRed:255.0/4*level green:255.0/4*level blue:255.0/4*level alpha:1];
}

- (CGFloat)fontSize1{
    return [self fontSizeWithLevel:1];
}
- (CGFloat)fontSize2{
    return [self fontSizeWithLevel:2];
}
- (CGFloat)fontSize3{
    return [self fontSizeWithLevel:3];
}
- (CGFloat)fontSize4{
    return [self fontSizeWithLevel:4];
}
- (CGFloat)fontSizeWithLevel:(CGFloat)level{
    return 8*level;
}

@end
