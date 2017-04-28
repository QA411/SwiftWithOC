//
//  additionalAccountModel.m
//  Client
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "additionalAccountModel.h"
#import "APIConfig.h"
#import "EGOCache.h"

@implementation additionalAccountModel

static additionalAccountModel *_currentAccount;
+(instancetype)currentAccount {
    if (!_currentAccount) {
        NSData *data = [[EGOCache globalCache] dataForKey:@"additionalAccountModel"];
        if (data) {
            _currentAccount =  [[additionalAccountModel alloc] initWithData:data error:NULL];
        }
    }
    return _currentAccount;
}
+(void)setCurrentAccount:(__kindof additionalAccountModel*)account {
   
//    NSData *data = [account toJSONData];  纳闷 哪有问题  只存token吧
    if (account) {
        [[EGOCache globalCache] setObject:account.token forKey:@"additionalAccountModel"];
        _currentAccount = account;
    }else{
        [[EGOCache globalCache] removeCacheForKey:@"additionalAccountModel"];
        _currentAccount = nil;
    }
}

- (NSString *)getUserToken{
    if (self.token.length) {
        return self.token;
    }
    return @"";
}
@end
