//
//  NextViewController.m
//  GradientNavigationBar
//
//  Created by 惠上科技 on 2018/11/15.
//  Copyright © 2018 洪海 杨. All rights reserved.
//

#import "NextViewController.h"
#import "UINavigationController+GestureBack.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的详情";
    UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 200)];
    view.image = [UIImage imageNamed:@"my_userHome_backImage"];
    [self.view addSubview:view];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_back_normal"] style:UIBarButtonItemStyleDone target:self action:@selector(baclItemClick)];
//    self.navigationItem.leftBarButtonItem = backItem;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = YES;
    self.navAlpha = 0;
    self.navTranslucent = YES;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
}


-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.translucent = NO;
    self.navAlpha = 1;
    self.navTranslucent = NO;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navi_bg"] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
}


-(void)baclItemClick{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
