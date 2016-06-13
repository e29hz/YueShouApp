//
//  YSHotViewController.m
//  YueShouApp
//
//  Created by 鄂鸿桢 on 16/6/13.
//  Copyright © 2016年 xiaoke. All rights reserved.
//

#import "YSHotViewController.h"

@interface YSHotViewController ()

@end

@implementation YSHotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = YSRandomColor;
    self.navigationItem.title = @"热门";
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
