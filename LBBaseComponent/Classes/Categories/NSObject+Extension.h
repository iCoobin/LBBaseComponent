//
//  NSObject+Extension.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Extension)

/**
 用于KVC赋值

 @param dict JSON数据
 @return Model对象
 */
- (instancetype)initWithDict:(NSDictionary *)dict;

/**
 对象判空

 @return YES or NO
 */
- (BOOL)isNull;

@end

NS_ASSUME_NONNULL_END
