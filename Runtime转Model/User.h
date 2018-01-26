//
//  User.h
//  Runtime转Model
//
//  Created by Vito on 2018/1/23.
//  Copyright © 2018年 inspur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic, strong) NSString *profile_image_url;

@property (nonatomic, assign) BOOL vip;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) NSInteger mbrank;

@property (nonatomic, assign) NSInteger mbtype;
@end
