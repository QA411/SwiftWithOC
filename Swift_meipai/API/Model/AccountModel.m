//
//  AccountModel.m
//  Client
//
//  Created by qq on 2016/11/17.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "AccountModel.h"
#import "APIConfig.h"
#import "EGOCache.h"

@implementation AccountModel


static AccountModel *_currentAccount;
+(instancetype)currentAccount {
    if (!_currentAccount) {
        NSData *data = [[EGOCache globalCache] dataForKey:@"currentAccount"];
        if (data) {
            _currentAccount =  [[AccountModel alloc] initWithData:data error:NULL];
        }
    }
    return _currentAccount;
}
+(void)setCurrentAccount:(__kindof AccountModel*)account {
    NSData *data = [account toJSONData];
    if (account && data) {
        [[EGOCache globalCache] setData:data forKey:@"currentAccount"];
        //        [JPUSHService setAlias:account.loginID callbackSelector:nil object:nil];
        _currentAccount = account;
    }else{
        [[EGOCache globalCache] removeCacheForKey:@"currentAccount"];
        //        [JPUSHService setAlias:nil callbackSelector:nil object:nil];
        
        _currentAccount = nil;
    }
}
//- (BOOL)isValid {
//    if (self.memberId.length) {
//        return YES;
//    }
//    return NO;
//}
//- (NSURL*)defaultPhotoUrl {
//    if (self.photoUrl.length) {
//        return  [NSURL URLWithString:self.photoUrl relativeToURL:[APIConfig config].picBaseURL];
//    }
//    else{
//        return nil;
//    }
//    
//}

@end
