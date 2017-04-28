//
//  APIConfig.h
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIConfig : NSObject

@property (nonatomic,assign,getter=isDebug) BOOL debug;
@property (nonatomic,strong,readonly) NSURL *baseURL;//基本的url
+ (instancetype)config;

@property (nonatomic,strong,readonly) NSURL *picBaseURL;//图片的url
@property (nonatomic,strong,readonly) NSURL *phoneBaseURL;//其他地方用到的多个url情况


@end
