//
//  IDCheck.h
//  checkBtn
//
//  Created by allthings_LuYD on 16/6/7.
//  Copyright © 2016年 allthings_LuYD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IDCheck : UIView
@property (nonatomic,strong) UIButton *checkBox;
@property (nonatomic,strong) UILabel *checkLabel;
- (void)refreshWith:(BOOL)selected;

- (instancetype)initWithFrame:(CGRect)frame withTitle:(NSString *)title;

@property (nonatomic,copy) void(^btnclick)();
@end
