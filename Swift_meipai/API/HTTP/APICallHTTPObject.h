//
//  APICallHTTPObject.h
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <JKCore.h>
#import "JKCore.h"

@interface APICallHTTPObject : JKHTTPObject


// 有多个地址的请求复写即可
@property (nonatomic, strong) id objJSON;  //   data   //返回原始对象("results":{}) 根据接口返回具体数据格式  再做处理
@property (nonatomic, strong) id additionalObjJSON;// additionalProperties

@end
