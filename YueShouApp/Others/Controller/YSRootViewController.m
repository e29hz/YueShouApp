//
//  YSRootViewController.m
//  YueShouApp
//
//  Created by 鄂鸿桢 on 16/6/13.
//  Copyright © 2016年 xiaoke. All rights reserved.
//

#import "YSRootViewController.h"
#import "YSHomeViewController.h"
#import "YSHotViewController.h"
#import "YSMyViewController.h"
#import "YSShopViewController.h"

@interface YSRootViewController ()

@end

@implementation YSRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTabBarController];
}
#pragma mark -- 配置tabBarController
-(void)setUpTabBarController{
    //    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) style:UITableViewStylePlain];
    //    [self.view addSubview:tableView];
    
    //创建首页模块
    YSHomeViewController *homeVc = [[YSHomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVc];
    homeNav.tabBarItem.title = @"首页";
    [homeNav.tabBarItem setImage:[[UIImage imageNamed:@"17_24"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [homeNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"17_24"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [homeNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    
    [homeNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateSelected];
    //创建热门模块
    YSHotViewController *hotVc = [[YSHotViewController alloc] init];
    UINavigationController *hotNav = [[UINavigationController alloc] initWithRootViewController:hotVc];
    
    hotNav.tabBarItem.title = @"热门";
    [hotNav.tabBarItem setImage:[[UIImage imageNamed:@"18_24"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [hotNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"18_24"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [hotNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    
    [hotNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateSelected];
    //创建商家模块
    YSShopViewController *shopVc = [[YSShopViewController alloc] init];
    UINavigationController *shopNav = [[UINavigationController alloc] initWithRootViewController:shopVc];
    shopNav.tabBarItem.title = @"商家";
    [shopNav.tabBarItem setImage:[[UIImage imageNamed:@"19_24"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [shopNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"19_24"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [shopNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    
    [shopNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateSelected];
    //创建我的模块
    YSMyViewController *myVc = [[YSMyViewController alloc] init];
    UINavigationController *myNav = [[UINavigationController alloc] initWithRootViewController:myVc];
    myNav.tabBarItem.title = @"我的";
    [myNav.tabBarItem setImage:[[UIImage imageNamed:@"20_24"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [myNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"20_24"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [myNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    
    [myNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateSelected];
    [self setViewControllers:@[homeNav,hotNav,shopNav,myNav]];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


@end
