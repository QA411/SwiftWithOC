//
//  JKHTTPCursorPageObject.h
//  MX
//
//  Created by Futao on 16/2/27.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, JKHTTPCursorType) {  // 查询方向
    JKHTTPCursorType_Next,  // 往下
    JKHTTPCursorType_Pre,  // 往上
};
@interface JKHTTPCursorPageObject : NSObject
@property (nonatomic, assign) NSUInteger requestCursorId; // 请求的ID
@property (nonatomic, assign) JKHTTPCursorType requestCursorType; // 查询方向
@property (nonatomic, assign) NSUInteger requestItemsCount; // 请求的数量
@property (nonatomic, assign) NSUInteger currentCursorId; // 当前页码
@property (nonatomic, assign) NSUInteger totalItemsCount; // 总计个数
@end
