//
//  ViewController.m
//  checkBtn
//
//  Created by allthings_LuYD on 16/6/7.
//  Copyright © 2016年 allthings_LuYD. All rights reserved.
//

#import "ViewController.h"
#import "IDCheck.h"

typedef NS_ENUM(NSInteger,IDType) {
     teacher = 1,
     student = 2,
     parent  = 3,
};
@interface ViewController ()

@property (nonatomic,assign) IDType ID;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    IDCheck *check = [[IDCheck alloc] initWithFrame:CGRectMake(50, 100, 80, 40) withTitle:@"老师"];
    IDCheck *check1 = [[IDCheck alloc] initWithFrame:CGRectMake(50, 150, 80, 40) withTitle:@"学生"];
    IDCheck *check2 = [[IDCheck alloc] initWithFrame:CGRectMake(50, 200, 80, 40) withTitle:@"家长"];
    __weak typeof(check)weakCheck = check;
    __weak typeof(check1)weakCheck1 = check1;
    __weak typeof(check2)weakCheck2 = check2;
    
    check.btnclick = ^(){
        self.ID = teacher;
        [weakCheck refreshWith: self.ID == teacher];
        [weakCheck1 refreshWith:self.ID == student];
        [weakCheck2 refreshWith:self.ID == parent ];
        NSLog(@"%ld",(long)self.ID);
    };
    check1.btnclick = ^(){
        self.ID = student;
        [weakCheck refreshWith:self.ID == teacher];
        [weakCheck1 refreshWith:self.ID == student];
        [weakCheck2 refreshWith:self.ID == parent];
        NSLog(@"%ld",(long)self.ID);
    };
    check2.btnclick = ^(){
        self.ID = parent;
        [weakCheck refreshWith:self.ID == teacher];
        [weakCheck1 refreshWith:self.ID == student];
        [weakCheck2 refreshWith:self.ID == parent];
        NSLog(@"%ld",(long)self.ID);
    };
    [self.view addSubview:check];
    [self.view addSubview:check1];
    [self.view addSubview:check2];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
