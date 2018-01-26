//
//  ViewController.m
//  Runtime转Model
//
//  Created by Vito on 2018/1/23.
//  Copyright © 2018年 inspur. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+Property.h"
#import "StatusItem.h"
#import "NSObject+Model.h"


@interface ViewController ()

@end
struct Dog
{
    char *name;
    int age;
    double height;
};

@implementation ViewController
NSString *const names = @"name";


- (void)viewDidLoad {
    [super viewDidLoad];
    // 获取文件全路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
    
    // 文件全路径
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    //获取属性代码
    [dict getPropertyCode];

    
    //获取模型
    StatusItem *item = [StatusItem itemWithDict:dict];
    
    

    
    


}

@end
