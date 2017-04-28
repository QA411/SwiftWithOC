//
//  APIConfig.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIConfig.h"
#import "url.h"

@implementation APIConfig
+ (instancetype)config {
    static id __sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedManager = [[[self class] alloc] init];
    });
    return __sharedManager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
#if DEBUG
        [self setDebug:YES];
#else
        [self setDebug:NO];
#endif

    }
    return self;
}

-(NSURL*)baseURL {
    
    return  [NSURL URLWithString:kBaseURL];
//    if (self.isDebug) {
//        return  [NSURL URLWithString:kBaseURL];//@"http://10.66.120.63/wisdomschool/phone/"
//    }else{
//        return  [NSURL URLWithString:@"http://10.66.120.63/wisdomschool/phone/"];
//    }
}

-(NSURL *)picBaseURL {
    return  [NSURL URLWithString:@"http://xmimg.danxia.com"];
}

- (NSURL *)phoneBaseURL {

    return  [NSURL URLWithString:kBaseURL1];
}

@end
