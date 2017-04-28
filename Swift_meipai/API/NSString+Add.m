//
//  NSString+Add.m
//  Client
//
//  Created by qq on 2016/12/2.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "NSString+Add.h"

@implementation NSString(Add)
-(NSString*)add:(NSString*)anotherString{
    return [NSString stringWithFormat:@"%@%@",self,anotherString];
}
@end
