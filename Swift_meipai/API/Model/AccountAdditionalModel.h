//
//  AccountAdditionalModel.h
//  Client
//
//  Created by qq on 2016/12/7.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "JKModel.h"

@interface AccountAdditionalModel : JKModel

@property (nonatomic, strong) NSString *radioId;// 所管理的电台id
@property (nonatomic, strong) NSString *token;
//@property (nonatomic, strong) KTBabyInfoModel *childList;
//@property (nonatomic, strong) NSArray<KTBabyInfoModel*> *childList;






+ (instancetype)currentAccount;
+ (void)setCurrentAccount:(__kindof AccountAdditionalModel*)account;

- (NSString *)getUserToken;//登录成功获取返回的 唯一标识
- (NSArray *)getChildList;
@end
