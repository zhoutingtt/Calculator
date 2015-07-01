//
//  ViewController.m
//  Calculator
//
//  Created by Apple on 15/6/30.
//  Copyright (c) 2015年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numBtn:(UIButton *)sender {
    NSString *num;
    num = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    NSLog(@"%@",num);
    [self.numDisplay setText:[NSString stringWithFormat:@"%@",num]];
    NSLog(@"%@",_numDisplay);
}

- (IBAction)mathBtn:(UIButton *)sender {
}

- (IBAction)resultBtn:(UIButton *)sender {
}

- (IBAction)dotBtn:(UIButton *)sender {
}


@end
