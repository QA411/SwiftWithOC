//
//  APIHTTPSessionManagerRequestSerializer.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIHTTPSessionManagerRequestSerializer.h"

@implementation APIHTTPSessionManagerRequestSerializer
- (NSDictionary *)decodeParametersByEncodedParameters:(NSDictionary *)parameters
                                                error:(NSError **)error;
{
    NSDictionary *parametersNew = parameters;
    return parametersNew;
}
@end
