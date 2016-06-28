//
//  UIView+GCYExtension.m
//  百思不得姐Demo
//
//  Created by Mr.GCY on 16/6/28.
//  Copyright © 2016年 Mr.GCY. All rights reserved.
//

#import "UIView+GCYExtension.h"

@implementation UIView (GCYExtension)
/******** 宽度 **********/
-(void)setGcy_width:(CGFloat)gcy_width
{
    CGRect frame = self.frame;
    frame.size.width = gcy_width;
    self.frame = frame;
}
-(CGFloat)gcy_width
{
    return self.frame.size.width;
}
/******** 高度 **********/
-(void)setGcy_height:(CGFloat)gcy_height
{
    CGRect frame = self.frame;
    frame.size.width = gcy_height;
    self.frame = frame;
}
-(CGFloat)gcy_height
{
    return self.frame.size.height;
}


@end
