//
//  APIAccountViewModel.h
//  Client
//
//  Created by qq on 2016/11/17.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "JKViewModel.h"
#import "APIHTTPObject.h"
#import "AccountModel.h"
#import "AccountAdditionalModel.h"

#import "APIPageObject.h"


@class GetTypeModel;
@class AccountModel;
@class AccountAdditionalModel;
@class KTStorageModel;
@class KTMessageListModel;

//API处理流程 参考示例
@interface APIAccountViewModel : JKViewModel


/**
 *  登录
 *
 *  @param phoneNumber 手机号
 *  @param password    密码
 *
 */
- (NSURLSessionDataTask *)requestToLoginWithPhoneNumber:(NSString*)phoneNumber password:(NSString*)password type:(NSString*)type completed:(void(^)(APIHTTPObject *resp,AccountModel *model,AccountAdditionalModel *addModel))completed;

@end
