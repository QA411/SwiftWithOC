//
//  Created by QQ:11386846 on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JKViewNewThisProtocol <NSObject>
@optional
+ (NSString *)bridgeNibName;
@end

@interface UIView (JKNewThis) <JKViewNewThisProtocol>
+ (instancetype)newThis;
@end
