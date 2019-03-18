//
//  NSString+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Extension
@interface NSString (Extension)

+ (BOOL)isNotBlank:(NSString*)source;
+ (BOOL)isBlank:(NSString*)source;

//用对象的方法计算文本的大小
- (CGSize)sizeWithFont:(UIFont*)font andMaxSize:(CGSize)size;

/**
 字符串url解码
 */
- (NSString *)urlDecode;

/**
 字符串的url编码
 */
- (NSString *)urlEncode;

/**
 字符串的url编码
 @param encoding 编码格式
 */
- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding;

@end

#pragma mark - MD5
@interface NSString (MD5)

- (NSString *)md5_16;
- (NSString *)md5_32;

+ (NSString *)md5_16:(NSString *)str;
+ (NSString *)md5_32:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
