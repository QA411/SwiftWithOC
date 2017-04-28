//
//  APIAccountViewModel.m
//  Client
//
//  Created by qq on 2016/11/17.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIAccountViewModel.h"
#import "AccountAdditionalModel.h"


#import "APIHTTPSessionManager.h"
#import "NSString+Ruby.h"
#import "NSURL+JKQuery.h"
#import "APIConfig.h"
#import <UIKit/UIKit.h>

//#import <UIKit/UIImage.h>
//#import "AccountModel.h"
//#import "AccountAdditionalModel.h"

@implementation APIAccountViewModel


/**
 *  登录
 *
 *  @param phoneNumber 手机号
 *  @param password    密码（明文）
 *  @param type        登录类型：1 - 家长，2 - 老师
 *
 */
- (NSURLSessionDataTask *)requestToLoginWithPhoneNumber:(NSString*)phoneNumber password:(NSString*)password type:(NSString*)type completed:(void(^)(APIHTTPObject *resp,AccountModel *model,AccountAdditionalModel *addModel))completed {
    NSMutableDictionary *parametersJSON = [[NSMutableDictionary alloc] init];
    if ([phoneNumber strip]) {
        [parametersJSON addEntriesFromDictionary:@{@"phoneNumber":[phoneNumber strip]}];
    }
    if ([password strip]) {
        [parametersJSON addEntriesFromDictionary:@{@"password":[password strip]}];
    }
    [parametersJSON addEntriesFromDictionary:@{@"type":type}];
//    [parametersJSON addEntriesFromDictionary:@{@"IsAutoLogin":@"1"}];
//    [parametersJSON addEntriesFromDictionary:@{@"Systype":@"APP"}];
    NSString *URLString = @"login/doLogin";
    return [[APIHTTPSessionManager sharedManager] POST:URLString parameters:parametersJSON completed:^(__kindof APIHTTPObject *responseObject) {
        AccountModel *object = nil;
        AccountAdditionalModel *objects = nil;
        
        if([responseObject isValid]) {
            if ([type isEqualToString:@"1"]) {
//                [[APIChildsAboutViewMode sharedViewModel] requestGetStudentList:responseObject.additionalObjJSON[@"token"] Completed:^(APIHTTPObject *resp, StudentListModel *model) {
//                    if (resp.isValid) {
//                        NSLog(@"更新缓存成功！");
//                    }
//                }];
            }
            
            if (responseObject) {
                if ([responseObject.objJSON isKindOfClass:[NSDictionary class]]) {
                    
                    object = [[AccountModel alloc] initWithDictionary:responseObject.objJSON error:NULL];
                    [AccountModel setCurrentAccount:object];
                    
                    if ([responseObject.additionalObjJSON isKindOfClass:[NSDictionary class]]) {

                        objects = [[AccountAdditionalModel alloc] initWithDictionary:responseObject.additionalObjJSON error:NULL];
                        [AccountAdditionalModel setCurrentAccount:objects];
                    }
                }
            }
        }
        if (completed) {
            completed(responseObject,object,objects);
        }
    }];
}


@end
