//
//  NSObject+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Extension)

+ (BOOL)isNull:(id)object;

+ (BOOL)isNotNull:(id)object;

@end

NS_ASSUME_NONNULL_END
