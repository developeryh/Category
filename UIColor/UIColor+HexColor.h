//
//  UIColor+HexColor.h
//  Demo
//
//  Created by Civel Xu on 2016/11/7.
//  Copyright © 2016年 游辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)

/**
 6位十六进制颜色码转颜色对象
 
 @param hex 6位十六进制颜色码 如@“0X555555”  或直接“555555”
 @return UIColor对象
 */
+ (UIColor*)colorWithHexString:(NSString*)hex;


/**
 6位十六进制颜色码转颜色对象（带透明度参数）
 
 @param hex 6位十六进制颜色码 如@“0X555555”  或直接“555555”
 @param alpha 透明度
 @return UIColor对象
 */
+ (UIColor*)colorWithHexString:(NSString*)hex withAlpha:(CGFloat)alpha;
@end
