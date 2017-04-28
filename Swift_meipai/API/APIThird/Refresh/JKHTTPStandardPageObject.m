//
//  JKHTTPStandardPageObject.m
//  MX
//
//  Created by Futao on 16/2/27.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import "JKHTTPStandardPageObject.h"

@implementation JKHTTPStandardPageObject
- (instancetype)init {
    self = [super init];
    if (self) {
        self.requestPageIndex = 1;
        self.requestPageSize = 10;
        self.currentPageIndex = 0;
        self.totalItemsCount = 0;
        self.totalPagesCount = 0;
    }
    return self;
}
@end
