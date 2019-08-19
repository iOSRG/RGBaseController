//
//  BaseTableViewCell.m
//  crlandRent
//
//  Created by pg on 2018/3/23.
//  Copyright © 2018年 Yongjia Liu. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
      
    }
    
    return self;
}

@end
