//
//  AccountModel.h
//  Client
//
//  Created by qq on 2016/11/17.
//  Copyright © 2016年 qq. All rights reserved.
//

//#import <JKCore.h>
#import "JKCore.h"

//API处理流程 参考示例

@interface AccountModel : JKModel



@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *code;
@property (nonatomic, strong) NSString *mobile;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *imgUrl;
@property (nonatomic, strong) NSString *orgCode;
@property (nonatomic, strong) NSString *orgName;
@property (nonatomic, strong) NSString *parentCode;
@property (nonatomic, strong) NSString *schoolType;
@property (nonatomic, strong) NSString *orgType;
@property (nonatomic, strong) NSString *orgStatus;
@property (nonatomic, strong) NSString *orgSort;
@property (nonatomic, strong) NSString *useParentCode;
@property (nonatomic, strong) NSString *type;// 1：家长，2：老师，3：家长+老师
@property (nonatomic, strong) NSString *qunId;
@property (nonatomic, strong) NSString *rootCode;
@property (nonatomic, strong) NSString *rootName;
@property (nonatomic, strong) NSString *organAllCode;
@property (nonatomic, strong) NSString *organAllName;
@property (nonatomic, strong) NSString *meberMaxAuth;
@property (nonatomic, strong) NSString *workDesc;
@property (nonatomic, strong) NSString *parentDesc;
@property (nonatomic, strong) NSString *parentName;
@property (nonatomic, strong) NSString *sex;
@property (nonatomic, strong) NSString *birthdayStr;
@property (nonatomic, strong) NSArray *groups;//空的  到时候在建个吧
@property (nonatomic, strong) NSArray *tchList;
//@property (nonatomic, assign) BOOL isClose;
//@property (nonatomic, assign) BOOL isDel;


+ (instancetype)currentAccount;
+ (void)setCurrentAccount:(__kindof AccountModel*)account;

//- (BOOL)isValid;//用于判断登录状态  有token 此方法可忽略（具体根据服务器返回数据最终格式做处理）
//- (NSURL*)defaultPhotoUrl;

@end
