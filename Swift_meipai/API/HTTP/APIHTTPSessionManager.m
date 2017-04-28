//
//  APIHTTPSessionManager.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIHTTPSessionManager.h"

#import "APIConfig.h"
#import "APIHTTPObject.h"
#import "APICallHTTPObject.h"
#import "APIHTTPSessionManagerResponseSerializer.h"
#import "APIHTTPSessionManagerRequestSerializer.h"

@implementation APIHTTPSessionManager
+ (instancetype)sharedCallManager {
    static id __sharedCallManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //TODO
        __sharedCallManager = [[[self class] alloc] initWithCallBaseURL:[APIConfig config].phoneBaseURL
                                                   sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    });
    return __sharedCallManager;
}
+ (instancetype)sharedManager {
    static id __sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //TODO
        __sharedManager = [[[self class] alloc] initWithBaseURL:[APIConfig config].baseURL
                                           sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    });
    return __sharedManager;
}
- (instancetype)initWithBaseURL:(NSURL *)url
           sessionConfiguration:(NSURLSessionConfiguration *)configuration
{
    self = [super initWithBaseURL:url sessionConfiguration:configuration];
    self.responseObjectClass = [APIHTTPObject class];
    
    AFHTTPRequestSerializer *requestSerializer  = [AFJSONRequestSerializer serializer];
    [requestSerializer setAuthorizationHeaderFieldWithUsername:@"Parry" password:@"123456"];
    [requestSerializer willChangeValueForKey:@"timeoutInterval"];
    requestSerializer.timeoutInterval = 15.0;
    [requestSerializer didChangeValueForKey:@"timeoutInterval"];
    self.sessionManager.requestSerializer = requestSerializer;
    self.requestSerializer = [APIHTTPSessionManagerRequestSerializer new];
    self.responseSerializer = [APIHTTPSessionManagerResponseSerializer new];
    
    
    return self;
}
- (instancetype)initWithCallBaseURL:(NSURL *)url
               sessionConfiguration:(NSURLSessionConfiguration *)configuration
{
    self = [super initWithBaseURL:url sessionConfiguration:configuration];
    self.responseObjectClass = [APICallHTTPObject class];
    
    AFHTTPRequestSerializer *requestSerializer  = [AFJSONRequestSerializer serializer];
    [requestSerializer setAuthorizationHeaderFieldWithUsername:@"Parry" password:@"123456"];
    [requestSerializer willChangeValueForKey:@"timeoutInterval"];
    requestSerializer.timeoutInterval = 15.0;
    [requestSerializer didChangeValueForKey:@"timeoutInterval"];
    self.sessionManager.requestSerializer = requestSerializer;
    self.requestSerializer = [APIHTTPSessionManagerRequestSerializer new];
    self.responseSerializer = [APIHTTPSessionManagerResponseSerializer new];
    
    
    return self;
}

@end
