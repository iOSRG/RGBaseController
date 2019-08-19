//
//  PlistTool.m
//  Base-ConfigureBase
//
//  Created by 浮生似梦、Dream on 2018/11/22.
//  Copyright © 2018年 Dream. All rights reserved.
//

#import "PlistTool.h"

@implementation PlistTool

+ (UIColor *)RGBString:(NSString *)rgbString {
    NSArray *rgbArr = [rgbString componentsSeparatedByString:@","];
    if (rgbArr.count < 3) {
        return [UIColor blackColor];
    }
    
    CGFloat red = [rgbArr[0] floatValue] /255.0;
    CGFloat green = [rgbArr[1] floatValue] /255.0;
    CGFloat blue = [rgbArr[2] floatValue] /255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}


+ (NSDictionary *)titleTextAttributesWithNavBarDic:(NSDictionary *)navBarDic {
    
    UIFont  *textFont;
    UIColor *textColor = [self RGBString:navBarDic[@"Color"]];
    CGFloat fontSize = [navBarDic[@"FontSize"] floatValue];
    if ([navBarDic[@"FontName"] length]) {
        textFont = [UIFont fontWithName:navBarDic[@"FontName"] size:fontSize];
    }else{
        textFont = [UIFont systemFontOfSize:fontSize];
    }
    
    
    return @{NSForegroundColorAttributeName : textColor, NSFontAttributeName : textFont};
}

@end
