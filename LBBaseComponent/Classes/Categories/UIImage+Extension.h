//
//  UIImage+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Extension)

/**
 截取view的内容，生成图片
 
 @param view 截取view
 @return 生成UIImage对象
 */
+ (UIImage *)snapshotWithView:(UIView *)view;

/**
 截取scrollView的内容，生成图片
 
 @param scrollView 截取scrollView
 @return 生成UIImage对象
 */
+ (UIImage *)snapshotWithScrollView:(UIScrollView *)scrollView;

/**
 *  根据CIImage生成指定大小的UIImage
 *
 *  @param image CIImage
 *  @param size  图片宽度
 *
 *  @return 生成的高清的UIImage
 */
+ (UIImage *)creatNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat)size;

/**
 *  生成纯色背景的UIImage
 *
 *  @param color UIColor
 *  @param size  图片大小
 *
 *  @return 生成的高清的UIImage
 */
+ (UIImage *)creatSimpleColorUIImage:(UIColor *)color radius:(CGFloat)radius size:(CGSize)size alpha:(CGFloat)alpha;


/**
 压缩图片
 
 @param maxLength 最长字节数 单位:b
 @return 图片二进制
 */
- (NSData *)compressQualityWithMaxLength:(NSInteger)maxLength;

@end

NS_ASSUME_NONNULL_END
