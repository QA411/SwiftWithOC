//
//  JKHTTPSessionManagerRequestSerializer.m
//  YoCar
//
//  Created by Futao on 15/9/29.
//  Copyright © 2015年 YoCar. All rights reserved.
//

#import "JKHTTPSessionManagerRequestSerializer.h"

@implementation JKHTTPSessionManagerRequestSerializer

- (NSDictionary *)encodeParametersByDecodedParameters:(NSDictionary *)parameters
                                                error:(NSError **)error;
{
    NSDictionary *parametersNew = parameters;
    return parametersNew;
}

#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding {
    return YES;
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    self.encryptEnabled = [[decoder decodeObjectOfClass:[NSNumber class] forKey:NSStringFromSelector(@selector(encryptEnabled))] boolValue];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeBool:self.encryptEnabled forKey:NSStringFromSelector(@selector(encryptEnabled))];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    JKHTTPSessionManagerRequestSerializer *requestSerializer = [[self class] allocWithZone:zone];
    requestSerializer.encryptEnabled = self.encryptEnabled;
    return requestSerializer;
}

@end
