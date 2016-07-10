//
//  IDCheck.m
//  checkBtn
//
//  Created by allthings_LuYD on 16/6/7.
//  Copyright © 2016年 allthings_LuYD. All rights reserved.
//

#import "IDCheck.h"


@implementation IDCheck

- (instancetype)initWithFrame:(CGRect)frame withTitle:(NSString *)title{
    if ([super initWithFrame:frame]) {
        [self setUpSubUI:frame title:title];
    }
    return self;
}

- (void)setUpSubUI:(CGRect)frame title:(NSString *)title{
    _checkLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _checkLabel.font = [UIFont systemFontOfSize:15];
    _checkLabel.text = title;
    [self addSubview:_checkLabel];
    _checkBox = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *backgroundImage = [UIImage imageNamed:@"icon_checkbox_background"];
    [_checkBox setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [_checkBox setBackgroundImage:backgroundImage forState:UIControlStateHighlighted];
    [_checkBox setBackgroundImage:backgroundImage forState:UIControlStateSelected];
    [_checkBox setImage:[UIImage imageNamed:@"icon_checkbox_unselected"] forState:UIControlStateNormal];
    [_checkBox setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateSelected];
    [_checkBox setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateHighlighted];
    [_checkBox addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_checkBox];
}
- (void)refreshWith:(BOOL)selected{
    self.checkBox.selected = selected;
}

- (void)btnClick{
    _btnclick();
}

- (void)layoutSubviews{
    _checkLabel.frame = CGRectMake(0, 10, self.frame.size.width/2.0 , 20);
    _checkBox.frame   = CGRectMake(self.frame.size.width/2.0 + 5, 10, 20, 20);
}
@end
