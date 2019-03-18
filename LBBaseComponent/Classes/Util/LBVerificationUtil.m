//
//  LBVerificationUtil.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBVerificationUtil.h"

#define RegexPhone @"^[0-9]*$"
#define RegexEmail @"^[a-zA-Z0-9\\+_\\.-]+@[a-zA-Z0-9\\+_\\.-]+(\\.[a-zA-Z0-9\\+_\\.-]+)+$"
#define RegexPassword @"^(?=.*[a-z])(?=.*[A-Z]).{8,}$"
#define RegexIDCard @"^(\\d{18,18}|\\d{15,15}|\\d{17,17}(X|x))$"
#define RegexIP @"^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$"
#define RegexAddress @"^[A-Za-z0-9]+$"

@implementation LBVerificationUtil

#pragma mark - 正则相关
+ (BOOL)isValidateByRegex:(NSString *)regex targetStr:(NSString *)targetStr {
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:targetStr];
}

//手机号码
+ (BOOL)validatePhone:(NSString *)phone {
    if (phone.length && [self isValidateByRegex:RegexPhone targetStr:phone]) {
        return YES;
    }
    return NO;
}

//邮箱
+ (BOOL)validateEmail:(NSString *)email {
    if (email.length && [self isValidateByRegex:RegexEmail targetStr:email]) {
        return YES;
    }
    return NO;
}

//密码
+ (BOOL)validatePassword:(NSString *)password {
    if (password.length && [self isValidateByRegex:RegexPassword targetStr:password]) {
        return YES;
    }
    return NO;
}

//身份证
+ (BOOL)validateIDCard:(NSString *)idCard {
    if (idCard.length && [self isValidateByRegex:RegexIDCard targetStr:idCard]) {
        return YES;
    }
    return NO;
}

@end
