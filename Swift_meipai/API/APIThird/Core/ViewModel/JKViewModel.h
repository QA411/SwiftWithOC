//
//  JKViewModel.h
//  JK
//
//  Created by Futao on 16/2/27.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKViewModel : NSObject
@end

// 单例继承
@interface JKViewModel (JKSharedInstance)
+ (instancetype)sharedViewModel;
@end