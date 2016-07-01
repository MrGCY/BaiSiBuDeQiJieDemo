//
//  GCYTabBarController.m
//  百思不得姐Demo
//
//  Created by Mr.GCY on 16/6/26.
//  Copyright © 2016年 Mr.GCY. All rights reserved.
//

#import "GCYTabBarController.h"
#import "GCYTabBar.h"
#import "GCYEssenceViewController.h"
#import "GCYNewViewController.h"
#import "GCYAttentionViewController.h"
#import "GCYMeViewController.h"

@interface GCYTabBarController ()

@end

@implementation GCYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置tabBar文字的属性
    [self setTabBarTitleAttrs];
    
    //设置控制器
    [self setupAllChildViewController];
    
    
}
/**
 *  设置tabBar文字属性
 */
-(void)setTabBarTitleAttrs
{
    //设置普通状态
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    //设置选中状态
    NSMutableDictionary * selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    //设置item全局改变
    [[UITabBarItem appearance] setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    //设置自定义TabBar
    [self setValue:[[GCYTabBar alloc] init] forKeyPath:@"tabBar"];
}
/**
 *  初始化所以控制器
 */
-(void)setupAllChildViewController
{
    [self setupChildViewController:[[GCYEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self setupChildViewController:[[GCYNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];
    [self setupChildViewController:[[GCYAttentionViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildViewController:[[GCYMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];
}
/**
 *  初始化一个控制器
 *
 *  @param vc             控制器
 *  @param title          设置控制器的文字
 *  @param imageStr       设置按钮的图片
 *  @param selectImageStr 设置按钮选中图片
 */
-(void)setupChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)imageStr selectImage:(NSString *)selectImageStr
{

    vc.tabBarItem.title = title;
    if (imageStr.length)
    {
        vc.tabBarItem.image = [UIImage imageNamed:imageStr];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImageStr];
    }
    [self addChildViewController:vc];
}
@end
