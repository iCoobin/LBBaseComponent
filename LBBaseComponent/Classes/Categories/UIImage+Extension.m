//
//  UIImage+Extension.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

/**
 截取view的内容，生成图片
 
 @param view 截取view
 @return 生成UIImage对象
 */
+ (UIImage *)snapshotWithView:(UIView *)view{
    UIGraphicsBeginImageContextWithOptions(view.frame.size, YES, UIScreen.mainScreen.scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 截取scrollView的内容，生成图片
 
 @param scrollView 截取scrollView
 @return 生成UIImage对象
 */
+ (UIImage *)snapshotWithScrollView:(UIScrollView *)scrollView{
    CGPoint currentContentOffset = scrollView.contentOffset;
    CGRect currentFrame = scrollView.frame;
    
    scrollView.contentOffset = CGPointZero;
    scrollView.frame = CGRectMake(0, 0, scrollView.frame.size.width, scrollView.frame.size.height);
    
    UIGraphicsBeginImageContextWithOptions(scrollView.contentSize, YES, UIScreen.mainScreen.scale);
    [scrollView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    scrollView.contentOffset = currentContentOffset;
    scrollView.frame = currentFrame;
    UIGraphicsEndImageContext();
    return image;
    
}

/**
 *  根据CIImage生成指定大小的UIImage
 *
 *  @param image CIImage
 *  @param size  图片宽度
 *
 *  @return 生成的高清的UIImage
 */
+ (UIImage *)creatNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat)size {
    CGRect extent = CGRectIntegral(image.extent);
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    
    // 1. 创建bitmap
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    
    // 2.保存bitmap图片
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    UIImage *finalImage = [UIImage imageWithCGImage:scaledImage];
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    CGColorSpaceRelease(cs);
    CGImageRelease(scaledImage);
    return finalImage;
}

+ (UIImage *)creatSimpleColorUIImage:(UIColor *)color radius:(CGFloat)radius size:(CGSize)size alpha:(CGFloat)alpha{
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(contextRef, color.CGColor);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    //将Path添加到上下文中
    CGContextAddPath(contextRef,path.CGPath);
    //添加透明度
    CGContextSetAlpha(contextRef, alpha);
    //填充颜色
    CGContextFillPath(contextRef);
    //裁剪上下文
    //    CGContextClip(contextRef);
    //设置绘制模式
    CGContextDrawPath(contextRef, kCGPathFillStroke);
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    
    //    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    //    //开启图形上下文
    //    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //    CGContextSetFillColorWithColor(contextRef, color.CGColor);
    //    //添加透明度
    //    CGContextSetAlpha(contextRef, alpha);
    //    //填充颜色
    //    CGContextFillPath(contextRef);
    //    //设置绘制模式
    //    CGContextDrawPath(contextRef, kCGPathFillStroke);
    //
    //    CGContextRef contextRef1 = UIGraphicsGetCurrentContext();
    //    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    //    //将Path添加到上下文中
    //    CGContextAddPath(contextRef1,path.CGPath);
    //    //裁剪上下文
    //    CGContextClip(contextRef1);
    //
    //    //获取图片
    //    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //    //关闭上下文
    //    UIGraphicsEndImageContext();
    
    return image;
}

- (NSData *)compressQualityWithMaxLength:(NSInteger)maxLength {
    CGFloat compression = 1;
    NSData *data = UIImageJPEGRepresentation(self, compression);
    if (data.length < maxLength) return data;
    CGFloat max = 1;
    CGFloat min = 0;
    for (int i = 0; i < 6; ++i) {
        compression = (max + min) / 2;
        data = UIImageJPEGRepresentation(self, compression);
        if (data.length < maxLength * 0.9) {
            min = compression;
        } else if (data.length > maxLength) {
            max = compression;
        } else {
            break;
        }
    }
    return data;
}

@end
