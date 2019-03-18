//
//  UUIDUtil.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "UUIDUtil.h"
#import "LBKeyChainUtil.h"

static NSString * const KEY_IN_KEYCHAIN = @"KEY_IN_KEYCHAIN";
static NSString * const KEY_UUID = @"KEY_UUID";

@implementation UUIDUtil

+ (void)saveUUID:(NSString *)uuid {
    NSMutableDictionary *usernameUuidPairs = [NSMutableDictionary dictionary];
    [usernameUuidPairs setObject:uuid forKey:KEY_UUID];
    [LBKeyChainUtil save:KEY_IN_KEYCHAIN data:usernameUuidPairs];
}

+ (id)readUUID {
    NSMutableDictionary *usernameUuidPairs = (NSMutableDictionary *)[LBKeyChainUtil load:KEY_IN_KEYCHAIN];
    NSString *uuid = [usernameUuidPairs objectForKey:KEY_UUID];
    if (uuid==nil) {
        NSUUID *UUID = [UIDevice currentDevice].identifierForVendor;
        [self saveUUID:UUID.UUIDString];
        return UUID.UUIDString;
    }
    return uuid;
}

+ (void)deleteUUID {
    [LBKeyChainUtil delete:KEY_IN_KEYCHAIN];
}

@end
