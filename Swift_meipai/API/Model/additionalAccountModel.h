//
//  additionalAccountModel.h
//  Client
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "JKModel.h"

@interface additionalAccountModel : JKModel


@property (nonatomic, strong) NSString *token;
//@property (nonatomic, strong) NSArray<KTBabyInfoModel*> *childList;






+ (instancetype)currentAccount;
+ (void)setCurrentAccount:(__kindof additionalAccountModel*)account;

- (NSString *)getUserToken;//登录成功获取返回的 唯一标识
- (NSArray *)getChildList;
@end
