//
//  UIViewController+JKHTTPPages.m
//  XS
//
//  Created by Futao on 16/3/30.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import "UIViewController+JKHTTPPages.h"

#import <objc/runtime.h>
@implementation UIViewController (JKHTTPPages)
static char cursorPageKey;
static char standardPageKey;

-(JKHTTPCursorPageObject *)cursorPage {
    __kindof JKHTTPCursorPageObject *obj = objc_getAssociatedObject(self, &cursorPageKey);
    if (!obj) {
        obj = [JKHTTPCursorPageObject new];
    }
    return obj;
}
-(void)setCursorPage:(__kindof JKHTTPCursorPageObject *)cursorPage {
    objc_setAssociatedObject(self, &cursorPageKey, cursorPage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (__kindof JKHTTPStandardPageObject *)standardPage {
   __kindof JKHTTPStandardPageObject *obj = objc_getAssociatedObject(self, &standardPageKey);
    if (!obj) {
        obj = [JKHTTPStandardPageObject new];
    }
    objc_setAssociatedObject(self, &standardPageKey, obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return obj;
}
- (void)setStandardPage:(__kindof JKHTTPStandardPageObject *)standardPage {
    objc_setAssociatedObject(self, &standardPageKey, standardPage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
