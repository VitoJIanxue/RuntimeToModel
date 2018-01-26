//
//  StatusItem.h
//  Runtime转Model
//
//  Created by Vito on 2018/1/23.
//  Copyright © 2018年 inspur. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@interface StatusItem : NSObject

// 自动生成属性 => 根据字典
@property (nonatomic, strong) NSString *source;

@property (nonatomic, assign) NSInteger reposts_count;

@property (nonatomic, strong) NSArray *pic_urls;

@property (nonatomic, strong) NSString *created_at;

@property (nonatomic, assign) NSInteger attitudes_count;

@property (nonatomic, strong) NSString *idstr;

@property (nonatomic, strong) NSString *text;

@property (nonatomic, assign) NSInteger comments_count;

@property (nonatomic, strong) User *user;

+ (instancetype)itemWithDict:(NSDictionary *)dict;
@end
