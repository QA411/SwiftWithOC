//
//  JKHttpObject.h
//  YoCar
//
//  Created by Futao on 15/9/30.
//  Copyright © 2015年 YoCar. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol JKHTTPObjectProtocol  <NSObject>
@required
- (instancetype)initWihResponseData:(NSObject*)responseData;
- (instancetype)initWihNSError:(NSError *)error;
@end

@interface JKHTTPObject : NSObject <JKHTTPObjectProtocol>
@property (nonatomic, assign) NSInteger code;         //返回状态
@property (nonatomic, strong) NSString *message;      //返回消息
@property (nonatomic, strong) id originalData;        //返回原始对象

@property (nonatomic, strong) id data;                //返回对象 // TODO
@property (nonatomic, assign, readonly) BOOL isValid; //接口是否正常返回数据 // TODO

@end
