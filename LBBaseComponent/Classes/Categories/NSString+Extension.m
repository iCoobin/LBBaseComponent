//
//  NSString+Extension.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonDigest.h>

#pragma mark - Extension
@implementation NSString (Extension)

+ (BOOL)isNotBlank:(NSString*)source {
    if ([source isKindOfClass:[NSNull class]]) {
        return NO;
    }
    if ( source == nil || source.length == 0 ) {
        return NO;
    }
    
    return YES;
}
+ (BOOL)isBlank:(NSString*)source {
    if ([source isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if (source == nil || source.length == 0 ) {
        return YES;
    }
    
    return NO;
}

//用对象的方法计算文本的大小
- (CGSize)sizeWithFont:(UIFont*)font andMaxSize:(CGSize)size {
    //特殊的格式要求都写在属性字典中
    NSDictionary*attrs =@{NSFontAttributeName: font};
    //返回一个矩形，大小等于文本绘制完占据的宽和高。
    return  [self  boundingRectWithSize:size  options:NSStringDrawingUsesLineFragmentOrigin  attributes:attrs   context:nil].size;
}

+ (CGSize)sizeWithString:(NSString*)str andFont:(UIFont*)font  andMaxSize:(CGSize)size {
    NSDictionary*attrs =@{NSFontAttributeName: font};
    return  [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs  context:nil].size;
}

- (NSString *)urlDecode {
    return [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

- (NSString *)urlEncode {
    return [self urlEncodeUsingEncoding:NSUTF8StringEncoding];
}

- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding {
    NSString *enString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                                               NULL,
                                                                                               (__bridge CFStringRef)self,
                                                                                               NULL,
                                                                                               (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                                               CFStringConvertNSStringEncodingToEncoding(encoding)));
    enString = [enString stringByReplacingOccurrencesOfString:@"%20" withString:@"+"];
    return enString;
}

@end

#pragma mark - MD5
@implementation NSString (MD5)

- (NSString *)md5_16{
    return [NSString md5_16:self];
}
- (NSString *)md5_32{
    return [NSString md5_32:self];
}

//md5 32位 加密 （小写）
+ (NSString *)md5_32:(NSString *)str {
    
    if(!str) return nil;
    const char *cStr = [str UTF8String];
    
    unsigned char result[32];
    
    CC_MD5(cStr,(CC_LONG)strlen(cStr),result);
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}



//md5 16位加密 （大写）
+ (NSString *)md5_16:(NSString *)str {
    
    if(!str) return nil;
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]];
    
}

@end
