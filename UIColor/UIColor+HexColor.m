//
//  UIColor+HexColor.m
//  Demo
//
//  Created by Civel Xu on 2016/11/7.
//  Copyright © 2016年 游辉. All rights reserved.
//

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)


/**
 6位十六进制颜色码转颜色对象

 @param hex 6位十六进制颜色码 如@“0X555555”  或直接“555555”
 @return UIColor对象
 */
+ (UIColor*)colorWithHexString:(NSString*)hex{
   return [self colorWithHexString:hex withAlpha:1.0f];
}



/**
 6位十六进制颜色码转颜色对象（带透明度参数）

 @param hex 6位十六进制颜色码 如@“0X555555”  或直接“555555”
 @param alpha 透明度
 @return UIColor对象
 */
+ (UIColor*)colorWithHexString:(NSString*)hex withAlpha:(CGFloat)alpha{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return [UIColor grayColor];
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

@end
