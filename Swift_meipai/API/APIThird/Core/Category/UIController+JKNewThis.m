//
//  Created by QQ:11386846 on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "UIController+JKNewThis.h"

@implementation UIViewController (JKNewThis)
+ (NSString *)bridgeStoryName {
    NSString *className = NSStringFromClass([self class]);
    NSString *storyName = [[className componentsSeparatedByString:@"_"] firstObject];
    return storyName;
}
+ (NSString *)bridgeStoryId {
    NSString *className = NSStringFromClass([self class]);
    return className;
}

+ (instancetype)newThis {
    NSString *storyName = [self bridgeStoryName];
    NSString *storyId = [self bridgeStoryId];
    id this = nil;

    if (storyName.length && storyId.length) {
        @try {
            this = [[UIStoryboard storyboardWithName:storyName bundle:nil] instantiateViewControllerWithIdentifier:storyId];
        }
        @catch (NSException *exception) {
            NSLog(@"警告: %@.storyboard中缺少对应Id: %@,如果不存在Storyboard，请使用[[%@ alloc] init]创建控制器", [self bridgeStoryName], [self bridgeStoryId], NSStringFromClass([self class]));
        }
        @finally {
        }
    }
    if (!this) {
        this = [[[self class] alloc] init];
    }
    return this;
}

@end
