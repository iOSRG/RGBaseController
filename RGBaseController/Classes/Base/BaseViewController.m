//
//  BaseViewController.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/21.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "BaseViewController.h"


@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.view endEditing:YES];
    [self hideHUD];
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
}



//MARK: - 隐藏HUD
- (void)hideHUD {
    
}








@end
