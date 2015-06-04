//
//  ViewController.m
//  autolayer-第三方库
//
//  Created by 潘阳君 on 15/6/4.
//  Copyright (c) 2015年 潘阳军. All rights reserved.
//
#import "ViewController.h"
#import <Masonry.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:view1];
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view2];
    //添加约束
    [view1 mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.right.equalTo(view2.mas_left).with.offset(-20);
        make.top.equalTo(self.view.mas_top).with.offset(50);
        make.height.equalTo(view2);
        make.left.equalTo(self.view.mas_left).with.offset(10);
        

    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.right.equalTo(self.view.mas_right).with.offset(-10);
        make.top.equalTo(view1);
        
    }];
}



@end
