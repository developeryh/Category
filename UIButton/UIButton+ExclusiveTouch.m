//
//  UIButton+ExclusiveTouch.m
//  BookClub
//
//  Created by MasterFly on 2017/4/28.
//  Copyright © 2017年 DengGongda. All rights reserved.
//

#import "UIButton+ExclusiveTouch.h"
#import <objc/runtime.h>

@implementation UIButton (ExclusiveTouch)

+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL sel = @selector(buttonWithType:);
        SEL swizzSel = @selector(swiz_buttonWithType:);
        
        //类方法
        Method method = class_getClassMethod([self class], sel);
        Method swizzMethod = class_getClassMethod([self class], swizzSel);
        
        //切换
        method_exchangeImplementations(method, swizzMethod);
    });
}

//禁止多个按钮同时点击
+ (instancetype)swiz_buttonWithType:(UIButtonType)buttonType{
    UIButton *btn = [self swiz_buttonWithType:buttonType];
    if (NSFoundationVersionNumber>=NSFoundationVersionNumber_iOS_8_0) {
        btn.exclusiveTouch = YES;
    }
    return  btn;
}

@end
