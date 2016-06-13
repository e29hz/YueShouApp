//
//  YSHomeViewController.m
//  YueShouApp
//
//  Created by 鄂鸿桢 on 16/6/13.
//  Copyright © 2016年 xiaoke. All rights reserved.
//

#import "YSHomeViewController.h"
#import "MMDrawerBarButtonItem.h"
#import "UIViewController+MMDrawerController.h"
#import "CollectionImageView.h"

#define ScreenSize      [UIScreen mainScreen].bounds.size

@interface YSHomeViewController ()

@property (nonatomic, strong) CollectionImageView * infiniteScrollView;

@end

@implementation YSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"00";
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self setUpView];
    
    [self setUpButton];
}
#pragma mark -- 配置视图
-(void)setUpView{
    
    UIButton *leftBtn=[UIButton buttonWithType:UIButtonTypeContactAdd];
    [leftBtn addTarget:self action:@selector(showLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem=leftItem;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    NSArray *images = @[@"ad1",@"ad1",@"ad1",@"ad1",@"ad1"];
    CollectionImageView *infiniteScrollView = [[CollectionImageView alloc]initWithFrame:CGRectMake(0, 64, ScreenSize.width, 180) imageArray:images selectImageBlock:^(NSInteger index) {
        NSLog(@"点击的是第%ld个",(long)index);
    }];
    [self.view addSubview:infiniteScrollView];
    self.infiniteScrollView = infiniteScrollView;
}
#pragma mark -- 导航栏右侧按钮的响应事件
-(void)showLeftMenu{
    
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    
}
#pragma mark -- 配置按钮
-(void)setUpButton{
    
    NSArray *images = @[@"1_24",@"2_24",@"3_24",@"4_24",@"5_24",@"6_24",@"7_24",@"8_24"];
    NSArray *titles = @[@"众筹",@"征信查询",@"卡片微金融",@"便捷金融",@"科学院",@"保险服务",@"理财",@"商城"];
    //中间的按钮
    int maxCols = 4;
    CGFloat margin = 1;
    CGFloat buttonW = (self.view.bounds.size.width - 3) / maxCols;
    CGFloat buttonH = buttonW;
    CGFloat buttonStartX = 0;
    CGFloat buttinStartY = CGRectGetMaxY(self.infiniteScrollView.frame) + margin;
    
    for (int i = 0; i < images.count; i++) {
        
        UIButton *button = [[UIButton alloc] init];
        
        button.backgroundColor = [UIColor whiteColor];
        //设置内容
        [button setTitle:titles[i] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:images[i]] forState:UIControlStateNormal];
        //设置frame
        CGFloat btnX;
        if (i < maxCols) {
            btnX = buttonStartX + (i * (buttonW + margin));
        } else {
            int j = i - maxCols;
            btnX = buttonStartX + (j * (buttonW + margin));
        }
        
        
        CGFloat btnY = buttinStartY + ((int)(i / maxCols) * (buttonH + margin));
        button.frame = CGRectMake(btnX, btnY, buttonW, buttonH);
        
        [self initButton:button];
        
        [self.view addSubview:button];
    }
}

-(void)initButton:(UIButton *)btn{
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(btn.imageView.frame.size.height ,-btn.imageView.frame.size.width, -40.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0,0.0, -btn.titleLabel.bounds.size.width)];//图片距离右边框距离减少图片的宽度，其它不边
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
