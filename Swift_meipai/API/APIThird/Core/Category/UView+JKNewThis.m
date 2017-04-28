//
//  Created by QQ:11386846 on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "UView+JKNewThis.h"

@implementation UIView (JKNewThis)
+ (NSString *)bridgeNibName {
    NSString *className = NSStringFromClass([self class]);
    return className;
}

+ (instancetype)newThis {
    id this = nil;
    @try {
        NSArray *views = [[UINib nibWithNibName:[self bridgeNibName]
                                         bundle:nil] instantiateWithOwner:nil
                                                                  options:nil];
        for (UIView *view in views) {
            if ([view isMemberOfClass:[self class]]) {
                this = view;
                break;
            }
        }
        if (!this) {
            NSLog(@"警告: %@.xib文件中缺少对应类: %@", [self bridgeNibName], NSStringFromClass([self class]));
        }
    }
    @catch (NSException *exception) {
        NSLog(@"警告: 如果不存在%@.xib，请使用[[%@ alloc] init]创建视图", [self bridgeNibName], NSStringFromClass([self class]));
    }
    @finally {
    }
    if (!this) {
        this = [[[self class] alloc] init];
    }
    return this;
}
@end
