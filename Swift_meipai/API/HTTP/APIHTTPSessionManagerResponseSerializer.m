//
//  APIHTTPSessionManagerResponseSerializer.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIHTTPSessionManagerResponseSerializer.h"

@implementation APIHTTPSessionManagerResponseSerializer
- (NSDictionary *)decodeParametersByEncodedParameters:(NSDictionary *)parameters
                                                error:(NSError **)error;
{
    //    if ([[parameters objectForKey:@"code"] isKindOfClass:[NSNumber class]]) {
    ////        NSInteger code = [[parameters objectForKey:@"code"] integerValue];
    ////        if (code == 1007 || code == 1001) {
    ////            [[NSNotificationCenter defaultCenter] postNotificationName:kDXNotificationTokenAccessDidError object:nil];
    ////        }
    //    }
    
    
    NSDictionary *parametersNew = parameters;
    return parametersNew;
}
@end
