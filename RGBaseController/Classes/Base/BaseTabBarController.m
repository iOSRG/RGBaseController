//
//  BaseTabBarController.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/21.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"
#import "PlistTool.h"
@interface BaseTabBarController ()

@property(nonatomic,strong)UIColor *tabBarItemSelectedColor;
@property(nonatomic,strong)NSArray *SubmoduleArr;


@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addData];
    [self addChildVC];
    
}

- (void)addData {

    NSString *path = [[NSBundle mainBundle] pathForResource:@"BaseControllerConfigure" ofType:@"plist"];
    if (!path.length) return ;
    NSDictionary *configureDic = [NSDictionary dictionaryWithContentsOfFile:path];
    _tabBarItemSelectedColor = [PlistTool RGBString:configureDic[@"TabBarItemSelectedColor"]];
    _SubmoduleArr = configureDic[@"Submodule"];
}


- (void) addChildVC{

    for (NSDictionary *vcInfo in _SubmoduleArr) {
        
        Class controller =  NSClassFromString(vcInfo[@"ClassName"]);
        UIViewController *controllerVc = [[controller alloc] init];
        [self setupChildVc:controllerVc title:vcInfo[@"Title"] image:vcInfo[@"NormalImage"] selectedImage:vcInfo[@"SelectedImage"]];
        
    }
}

/**
 * 初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2);
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : _tabBarItemSelectedColor} forState:UIControlStateSelected];
    //    vc.tabBarItem.badgeValue = [NSString stringWithFormat:@"1"];
    
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}




@end
