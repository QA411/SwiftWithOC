//
//  JKHttpObject.m
//  YoCar
//
//  Created by Futao on 15/9/30.
//  Copyright © 2015年 YoCar. All rights reserved.
//

#import "JKHTTPObject.h"

@implementation JKHTTPObject

- (instancetype)initWihNSError:(NSError *)error {
    self = [super init];
    if (self) {
        self.code = error.code;
        self.message = error.localizedDescription;
    }
    return self;
}
- (instancetype)initWihResponseData:(NSObject*)responseData {
    self = [super init];
    if (self) {
        if ([responseData isKindOfClass:[NSDictionary class]]) {
            self.code = [[(NSDictionary*)responseData objectForKey:@"code"] integerValue];
            self.message = [(NSDictionary*)responseData objectForKey:@"message"];
            if (self.message == nil) {
                self.message = @"网络异常,请稍后重试!";
            }
        }
        self.originalData = responseData;
    }
    return self;
}
- (BOOL)isValid {
    if (self.code == 200) {
        return YES;
    }
    return NO;
}
@end
