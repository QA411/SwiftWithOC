//
//  JKHTTPSessionManagerResponseSerializer.m
//  YoCar
//
//  Created by Futao on 15/9/29.
//  Copyright © 2015年 YoCar. All rights reserved.
//

#import "JKHTTPSessionManagerResponseSerializer.h"

@implementation JKHTTPSessionManagerResponseSerializer

- (NSDictionary *)decodeParametersByEncodedParameters:(NSDictionary *)parameters
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
    self.decryptEnabled = [[decoder decodeObjectOfClass:[NSNumber class] forKey:NSStringFromSelector(@selector(decryptEnabled))] boolValue];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeBool:self.decryptEnabled forKey:NSStringFromSelector(@selector(decryptEnabled))];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    JKHTTPSessionManagerResponseSerializer *requestSerializer = [[self class] allocWithZone:zone];
    requestSerializer.decryptEnabled = self.decryptEnabled;
    return requestSerializer;
}

@end
