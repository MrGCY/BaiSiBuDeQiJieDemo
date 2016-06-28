//
//  GCYTabBar.m
//  百思不得姐Demo
//
//  Created by Mr.GCY on 16/6/28.
//  Copyright © 2016年 Mr.GCY. All rights reserved.
//

#import "GCYTabBar.h"
@interface GCYTabBar()
@property (nonatomic, weak) UIButton *publishButton;
@end
@implementation GCYTabBar
/**
 *  懒加载创建发布按钮
 */
-(UIButton *)publishButton
{
    if (!_publishButton)
    {
        UIButton * publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [publishButton addTarget:self action:@selector(clickPublishButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:publishButton];
        _publishButton = publishButton;
    }
    return _publishButton;
}

/**
 *  布局设置
 */
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat buttonW = self.gcy_width / 5.0;
    CGFloat buttonH = self.gcy_height;
    CGFloat buttonY = 0;
    int buttonIndex = 0;
    
    //遍历他的子控件，进行尺寸位置的修改
    for (UIView * subview in self.subviews)
    {
        //进行筛选
        if (subview.class == NSClassFromString(@"UITabBarButton"))
        {
            CGFloat buttonX = buttonW * buttonIndex;
            if (buttonIndex >=2)
            {
                buttonX += buttonW;
            }
            subview.frame = CGRectMake(buttonX , buttonY, buttonW, buttonH);
            buttonIndex++;
        }
    }
    
    //设置发布按钮的位置大小
    self.publishButton.frame = CGRectMake(0, 0, buttonW, buttonH);
    self.publishButton.center = CGPointMake(self.gcy_width * 0.5, self.gcy_height * 0.5);
    
    
}
/**
 *  发布按钮的事件监听
 */
-(void)clickPublishButton:(UIButton *)btn
{
    GCYLogFunc
}
@end
