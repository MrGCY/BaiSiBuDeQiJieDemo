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
/******** x **********/
-(void)setGcy_x:(CGFloat)gcy_x
{
    CGRect frame = self.frame;
    frame.origin.x = gcy_x;
    self.frame = frame;
}
-(CGFloat)gcy_x
{
    return self.frame.origin.x;
}
/******** y **********/
-(void)setGcy_y:(CGFloat)gcy_y
{
    CGRect frame = self.frame;
    frame.origin.y = gcy_y;
    self.frame = frame;
}
-(CGFloat)gcy_y
{
    return self.frame.origin.y;
}
/**
 *  中心x
 */
-(void)setGcy_centerX:(CGFloat)gcy_centerX
{
    CGPoint center = self.center;
    center.x = gcy_centerX;
    self.center = center;
}
-(CGFloat)gcy_centerX
{
    return self.center.x;
}
/**
 *  中心y
 */
-(void)setGcy_centerY:(CGFloat)gcy_centerY
{
    CGPoint center = self.center;
    center.y = gcy_centerY;
    self.center = center;
}
-(CGFloat)gcy_centerY
{
    return self.center.y;
}
/**
 *  最大x
 */
-(void)setGcy_right:(CGFloat)gcy_right
{
    CGRect frame = self.frame;
    frame.origin.x = gcy_right - self.gcy_width;
    self.frame = frame;
}
-(CGFloat)gcy_right
{
    return CGRectGetMidX(self.frame);
}
/**
 *  最大y
 */
-(void)setGcy_bottom:(CGFloat)gcy_bottom
{
    CGRect frame = self.frame;
    frame.origin.x = gcy_bottom - self.gcy_height;
    self.frame = frame;
}
-(CGFloat)gcy_bottom
{
    return CGRectGetMidY(self.frame);
}
@end
