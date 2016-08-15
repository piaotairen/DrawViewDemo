//
//  ViewController.m
//  DrawViewDemo
//
//  Created by Cobb on 16/6/15.
//  Copyright © 2016年 Cobb. All rights reserved.
//

#import "ViewController.h"
#import "LSGiftDisplayBlurView.h"
#import "Masonry.h"

#define kLSGiftDisplayItemWidth 280.f  //视图宽度
#define kLSGiftDisplayItemHeight 55.f  //视图高度

@interface ViewController ()

@end

@implementation ViewController

//static dispatch_queue_t _giftGroupQueue;

- (void)viewDidLoad {
    [super viewDidLoad];
    LSGiftDisplayBlurView *CustomView = [[LSGiftDisplayBlurView alloc]init];
    CustomView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:CustomView];
    
    [CustomView mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(self.view.mas_left).offset(0);
        make.top.equalTo(self.view.mas_top).offset(100);
        make.width.mas_equalTo(kLSGiftDisplayItemWidth);
        make.height.mas_equalTo(kLSGiftDisplayItemHeight);
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
