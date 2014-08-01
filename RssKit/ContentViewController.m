//
//  ContentViewController.m
//  RssKit
//
//  Created by lerosua on 14-7-30.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController()

@property (nonatomic,strong) UIWebView *webView;

@end

@implementation ContentViewController

- (instancetype) init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:self.webView];
    [self.webView loadHTMLString:self.htmlContent baseURL:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
