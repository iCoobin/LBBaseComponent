//
//  NSObject+Extension.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "NSObject+Extension.h"

@implementation NSObject (Extension)

+ (BOOL)isNull:(id)object {
    if ((object == nil) || (object == [NSNull null])) {
        return YES;
    }
    return NO;
}

+ (BOOL)isNotNull:(id)object {
    if ((object != nil) && (object != [NSNull null])) {
        return YES;
    }
    
    return NO;
}

- (id)valueForUndefinedKey:(NSString *)key {
    return nil;
}

@end
