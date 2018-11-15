//
//  MeViewController.m
//  GradientNavigationBar
//
//  Created by Yang on 2017/7/24.
//  Copyright © 2017年 洪海 杨. All rights reserved.
//

#import "MeViewController.h"
#import "NextViewController.h"
@interface MeViewController ()
@end
@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.extendedLayoutIncludesOpaqueBars = YES;
    self.title = @"个人中心";
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_back_normal"] style:UIBarButtonItemStyleDone target:self action:@selector(baclItemClick)];
//    self.navigationItem.leftBarButtonItem = backItem;
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


-(void)baclItemClick{
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)nextClick{
    NextViewController *next = [[NextViewController alloc] init];
    [self.navigationController pushViewController:next animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
