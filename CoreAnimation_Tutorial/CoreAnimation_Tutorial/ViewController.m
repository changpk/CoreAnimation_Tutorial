//
//  ViewController.m
//  CoreAnimation_Tutorial
//
//  Created by sinagame on 16/4/5.
//  Copyright © 2016年 changpengkai. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property (nonatomic, strong) CustomView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    [self addMainView];
    
}

- (void)addMainView {
    
    _mainView = [[CustomView alloc]init];
    _mainView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_mainView];
    [_mainView remakeConstraints:^(MASConstraintMaker *make) {
        make.center.centerX.equalTo(self.view);
        make.center.centerY.equalTo(self.view);
        make.width.equalTo(200);
        make.height.equalTo(200);
    }];
    
    NSLog(@"outside animation block: %@",
          [_mainView actionForLayer:_mainView.layer forKey:@"position"]);
    
    [UIView animateWithDuration:0.3 animations:^{
        NSLog(@"inside animation block: %@",
              [_mainView actionForLayer:_mainView.layer forKey:@"position"]);
        [self.view layoutIfNeeded];
    }];
}

@end
