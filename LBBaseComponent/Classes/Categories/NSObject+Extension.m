//
//  NSObject+Extension.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "NSObject+Extension.h"

@implementation NSObject (Extension)

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [self init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (BOOL)isNull
{
    if ((self == nil) || (self == [NSNull null])) {
        return YES;
    }
    return NO;
}

- (id)valueForUndefinedKey:(NSString *)key {
    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSLog(@"KVC未识别key...%@",key);
}

@end
