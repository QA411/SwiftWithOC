//
//  APIJSONKeyMapper.h
//  Client
//
//  Created by qq on 2016/11/14.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

@interface APIJSONKeyMapper : NSObject

+(JSONKeyMapper*)uppercaseKeyMapper;
@end
