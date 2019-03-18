//
//  LBVerificationUtil.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBVerificationUtil : NSObject

+ (BOOL)validatePhone:(NSString *)phone;
+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validatePassword:(NSString *)password;
+ (BOOL)validateIDCard:(NSString *)idCard;

@end

NS_ASSUME_NONNULL_END
