//
//  ViewController.m
//  导航栏透明渐变
//
//  Created by Yang on 2017/7/19.
//  Copyright © 2017年 YHH. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationController+GestureBack.h"
#import "MeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"背景图导航栏";
    UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 200)];
    view.image = [UIImage imageNamed:@"my_userHome_backImage"];
    [self.view addSubview:view];
    self.view.backgroundColor = [UIColor whiteColor];
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
//    self.navAlpha = 1;
//    self.navTranslucent = NO;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navi_bg"] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    MeViewController *vc = [[MeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
