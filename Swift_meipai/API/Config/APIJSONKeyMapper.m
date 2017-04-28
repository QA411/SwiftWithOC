//
//  APIJSONKeyMapper.m
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "APIJSONKeyMapper.h"

@implementation APIJSONKeyMapper

+(JSONKeyMapper*)uppercaseKeyMapper
{
    JSONModelKeyMapBlock toModel = ^ NSString* (NSString* keyName) {
        NSString *uppercaseString = [keyName stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[keyName substringToIndex:1] uppercaseString]];;
        return uppercaseString;
    };
//    JSONModelKeyMapBlock toJSON = ^ NSString* (NSString* keyName) {
//        NSString *uppercaseString = [keyName stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[keyName substringToIndex:1] uppercaseString]];;
//        
//        return uppercaseString;
//    };
//    return [[JSONKeyMapper alloc] initWithJSONToModelBlock:toModel
//                                          modelToJSONBlock:toJSON];
    
    return [[JSONKeyMapper alloc] initWithModelToJSONBlock:toModel];
}
@end
