//
//  PlistTool.h
//  Base-ConfigureBase
//
//  Created by 浮生似梦、Dream on 2018/11/22.
//  Copyright © 2018年 Dream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlistTool : NSObject


//颜色装换配置
+ (UIColor *)RGBString:(NSString *)rgbString;

///导航栏标题字体配置
+ (NSDictionary *)titleTextAttributesWithNavBarDic:(NSDictionary *)navBarDic;

@end
