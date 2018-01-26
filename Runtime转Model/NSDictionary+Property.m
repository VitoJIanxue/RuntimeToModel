//
//  NSDictionary+Property.m
//  Runtime转Model
//
//  Created by Vito on 2018/1/23.
//  Copyright © 2018年 inspur. All rights reserved.
//

#import "NSDictionary+Property.h"
// 生成属性代码 => 根据字典中所有key
@implementation NSDictionary (Property)
- (void)getPropertyCode{
    NSMutableString *codes = [NSMutableString string];
    // 遍历字典
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull value, BOOL * _Nonnull stop) {
        
        NSString *code;
        if ([value isKindOfClass:[NSString class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSString *%@;",key];
        } else if ([value isKindOfClass:NSClassFromString(@"__NSCFBoolean")]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) BOOL %@;",key];
        } else if ([value isKindOfClass:[NSNumber class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) NSInteger %@;",key];
        } else if ([value isKindOfClass:[NSArray class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSArray *%@;",key];
        } else if ([value isKindOfClass:[NSDictionary class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSDictionary *%@;",key];
        }
        
        // @property (nonatomic, strong) NSString *source;
        
        [codes appendFormat:@"\n%@\n",code];
        
    }];
    
    NSLog(@"%@",codes);
}
@end
