//
//  AccountAdditionalModel.m
//  Client
//
//  Created by qq on 2016/12/7.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "AccountAdditionalModel.h"
#import "APIConfig.h"
#import "EGOCache.h"

@implementation AccountAdditionalModel

static AccountAdditionalModel *_currentAccount;
-(NSString*)radioId{
#ifdef DEBUG
    if(_radioId==nil || [_radioId isEqualToString:@""]){
        NSLog(@"radioId 为空");
        return @"24830995177930817";
    }
#endif
    return _radioId;
}
+(instancetype)currentAccount {
    if (!_currentAccount) {
        NSData *data = [[EGOCache globalCache] dataForKey:@"AccountAdditionalModel"];
        if (data) {
            _currentAccount =  [[AccountAdditionalModel alloc] initWithData:data error:NULL];
        }
    }
    return _currentAccount;
}
+(void)setCurrentAccount:(__kindof AccountAdditionalModel*)account {
    
    NSData *data = [account toJSONData];  //纳闷 哪有问题  只存token吧
    if (account && data) {
        [[EGOCache globalCache] setData:data forKey:@"AccountAdditionalModel"];
        _currentAccount = account;
    }else{
        [[EGOCache globalCache] removeCacheForKey:@"AccountAdditionalModel"];
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

