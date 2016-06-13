//
//  YSShangchengController.m
//  YueShouApp
//
//  Created by 鄂鸿桢 on 16/6/13.
//  Copyright © 2016年 xiaoke. All rights reserved.
//

#import "YSShangchengController.h"
#import <WebKit/WebKit.h>

@interface YSShangchengController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation YSShangchengController

- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:webView];
    self.webView = webView;
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://abc.yueshouwang.com/mobile/"]];
    [self.webView loadRequest:request];
}

@end
