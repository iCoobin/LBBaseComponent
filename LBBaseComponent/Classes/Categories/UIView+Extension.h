//
//  UIView+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Extension
@interface UIView (Extension)

@property CGPoint origin;
@property CGSize size;


@property CGFloat height;
@property CGFloat width;

@property CGFloat top;
@property CGFloat left;

@property CGFloat bottom;
@property CGFloat right;

@property CGFloat centerX;
@property CGFloat centerY;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

@end

#pragma mark - RoundedCorners
@interface UIView (RoundedCorners)

//使用图层蒙版为视图添加圆角 可以设置view四个角的任意几个角
- (void)setRoundedCorners:(UIRectCorner)corners radius:(CGSize)size;
- (void)setCornerRadius:(CGFloat)radius;

@end

#pragma mark - ViewController
@interface UIView (ViewController)

/**
 获取View所在的当前Controller

 @return 当前Controller or nil
 */
- (UIViewController *)currentViewController;

@end

NS_ASSUME_NONNULL_END
