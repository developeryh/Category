//
//  NSDictionary+AvoidNull.m
//  Demo
//
//  Created by 游辉 on 16/8/2.
//  Copyright © 2016年 游辉. All rights reserved.
//

#import "NSDictionary+AvoidNull.h"

@implementation NSDictionary (AvoidNull)

/**
 *  返回一个非null 和 nil 的 字典值
 *
 *  @param aKey 传入的值
 *
 *  @return 字符串
 */
- (id)noneNullStrObjectForKey:(id)aKey{
    id obj = [self objectForKey:aKey];
    if ([obj isKindOfClass:[NSNull class]] || obj == nil ) {
        obj = @"";
    }
    return [NSString stringWithFormat:@"%@",obj];
}

/**
 *  返回一个非null 和 nil 的 字典值
 *
 *  @param aKey 传入的值
 *
 *  @return 字典
 */
- (id)noneNullDictObjectForKey:(id)aKey{
    id obj = [self objectForKey:aKey];
    if ([obj isKindOfClass:[NSNull class]] || obj == nil ) {
        obj = [NSDictionary dictionary];
    }
    return obj;
}


/**
 *  返回一个非null 和 nil 的 字典值
 *
 *  @param aKey 传入的值
 *
 *  @return 数组
 */
- (id)noneNullArrayObjectForKey:(id)aKey{
    id obj = [self objectForKey:aKey];
    if ([obj isKindOfClass:[NSNull class]] || obj == nil ) {
        obj = [NSArray array];
    }
    return obj;
}



@end
