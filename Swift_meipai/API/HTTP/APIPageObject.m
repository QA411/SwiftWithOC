//
//  APIPageObject.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIPageObject.h"

@implementation APIPageObject
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
