//
//  UISlider+EnlargeTouchArea.h
//  CloudResearchVoice
//
//  Created by 游辉 on 16/11/12.
//  Copyright © 2016年 游辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISlider (EnlargeTouchArea)

/**
 扩展响应区域
 
 @param top 上
 @param right 右
 @param bottom 下
 @param left 左
 */
- (void)setEnlargeEdgeWithTop:(CGFloat) top right:(CGFloat) right bottom:(CGFloat) bottom left:(CGFloat) left;


@end
