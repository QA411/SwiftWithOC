//
//  JKHTTPStandardPageObject.h
//  MX
//
//  Created by Futao on 16/2/27.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKHTTPStandardPageObject : NSObject
@property (nonatomic, assign) NSUInteger requestPageIndex; // 请求的页码
@property (nonatomic, assign) NSUInteger requestPageSize; // 请求的数量
@property (nonatomic, assign) NSUInteger currentPageIndex; // 当前页码
@property (nonatomic, assign) NSUInteger totalItemsCount; // 总计个数
@property (nonatomic, assign) NSUInteger totalPagesCount; // 总计分页个数

@end
