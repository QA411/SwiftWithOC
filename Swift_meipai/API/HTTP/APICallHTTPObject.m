//
//  APICallHTTPObject.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APICallHTTPObject.h"

// API根据接口返回具体数据格式  再做处理
@implementation APICallHTTPObject
- (instancetype)initWihResponseData:(NSObject*)responseData {
    self = [super init];
    if (self) {
        if ([responseData isKindOfClass:[NSDictionary class]]) {
            if (![[(NSDictionary*)responseData objectForKey:@"code"] isKindOfClass:[NSNull class]]) {
                self.code = [[(NSDictionary*)responseData objectForKey:@"code"] integerValue];
            }else{
                self.code = 1;
            }
            if (![[(NSDictionary*)responseData objectForKey:@"msg"] isKindOfClass:[NSNull class]]) {
                self.message = [(NSDictionary*)responseData objectForKey:@"msg"];
            }
            if (self.message == nil) {
                self.message = @"网络异常,请稍后重试!";
            }
            if (![[(NSDictionary*)responseData objectForKey:@"data"] isKindOfClass:[NSNull class]]) {
                self.objJSON = [(NSDictionary*)responseData objectForKey:@"data"];
            }else{
                self.objJSON = nil;
            }
            if (![[(NSDictionary*)responseData objectForKey:@"additionalProperties"] isKindOfClass:[NSNull class]]) {
                self.additionalObjJSON = [(NSDictionary*)responseData objectForKey:@"additionalProperties"];
            }else{
                self.additionalObjJSON = nil;
            }
        }else{
            self.code = 1;
            self.message = @"网络异常,请稍后重试!";
        }
        self.originalData = responseData;
    }
    return self;
}

- (instancetype)initWihNSError:(NSError *)error
{
    self = [super initWihNSError:error];
    return self;
}

- (BOOL)isValid {
    if (self.code == 0) {
        return YES;
    }
    return NO;
}

@end
