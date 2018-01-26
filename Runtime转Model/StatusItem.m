//
//  StatusItem.m
//  Runtime转Model
//
//  Created by Vito on 2018/1/23.
//  Copyright © 2018年 inspur. All rights reserved.
//

#import "StatusItem.h"

@implementation StatusItem

-(id)copyWithZone:(NSZone *)zone{
    StatusItem *ta = [StatusItem allocWithZone:zone];
    return ta;
}
@end
