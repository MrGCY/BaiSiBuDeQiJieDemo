//
//  UIView+GCYExtension.h
//  百思不得姐Demo
//
//  Created by Mr.GCY on 16/6/28.
//  Copyright © 2016年 Mr.GCY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GCYExtension)
/**
 *  视图高度
 */
@property (nonatomic, assign) CGFloat gcy_height;
/**
 *  视图宽度
 */
@property (nonatomic, assign) CGFloat gcy_width;
/**
*  视图X
*/
@property (nonatomic, assign) CGFloat gcy_x;
/**
 *  视图Y
 */
@property (nonatomic, assign) CGFloat gcy_y;
/**
 *  中心x
 */
@property (nonatomic, assign) CGFloat gcy_centerX;
/**
 *  中心y
 */
@property (nonatomic, assign) CGFloat gcy_centerY;
/**
 *  最大x
 */
@property (nonatomic, assign) CGFloat gcy_right;
/**
 *  最大y
 */
@property (nonatomic, assign) CGFloat gcy_bottom;
@end
