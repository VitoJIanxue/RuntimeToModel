//
//  NSObject+Model.h
//  Runtime转Model
//
//  Created by Vito on 2018/1/23.
//  Copyright © 2018年 inspur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)
+ (instancetype)modelWithDict:(NSDictionary *)dict;
@end
