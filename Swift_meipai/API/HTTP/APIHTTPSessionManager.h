//
//  APIHTTPSessionManager.h
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <JKCore.h>
#import "JKCore.h"

@interface APIHTTPSessionManager : JKHTTPSessionManager
+ (instancetype)sharedManager;
+ (instancetype)sharedCallManager;
@end
