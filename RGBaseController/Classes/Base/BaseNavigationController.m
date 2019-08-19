//
//  BaseNavigationController.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/21.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "BaseNavigationController.h"
#import "PlistTool.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configuraNavigationBar];
}

//MARK: - 配置导航栏
- (void)configuraNavigationBar {
    
    NSString *navigationBarPath =  [[NSBundle mainBundle] pathForResource:@"navigationBar" ofType:@"plist"];
    
    if (!navigationBarPath.length) return;
    
    NSDictionary *navigationBarDic = [NSDictionary dictionaryWithContentsOfFile:navigationBarPath];
    
    
    self.navigationBar.translucent = [navigationBarDic[@"Translucent"] boolValue];
    self.navigationBar.barTintColor = [PlistTool RGBString:navigationBarDic[@"BarTintColor"]];
    self.navigationBar.tintColor = [PlistTool RGBString:navigationBarDic[@"TintColor"]];
    [self.navigationBar setTitleTextAttributes:[PlistTool titleTextAttributesWithNavBarDic:navigationBarDic[@"NavigationBarTitleSetting"]]];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) { // 如果push进来的不是第一个控制器
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:[self backImageName]] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:[self backImageName]] forState:UIControlStateHighlighted];
        button.frame = CGRectMake(0, 0, 40, 30);
        //控制是否将返回按钮的Target设置为当前将要push的控制器
        if ([viewController respondsToSelector:@selector(backAction)]) {
            [button addTarget:viewController action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        }else{
            [button addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        }
        // 修改导航栏左边的item
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:YES];
}

- (NSString *)backImageName {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"BaseControllerConfigure" ofType:@"plist"];
    if (!path.length) return @"";
    
    NSString *backImageName = [NSDictionary dictionaryWithContentsOfFile:path][@"BackImageName"];
    return backImageName;
    
}

//MARK: - Action
- (void)backAction {
    
    [self popViewControllerAnimated:YES];
}




@end
