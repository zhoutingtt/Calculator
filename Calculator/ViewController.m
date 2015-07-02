//
//  ViewController.m
//  Calculator
//
//  Created by Apple on 15/6/30.
//  Copyright (c) 2015年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *_num1;
    NSString *_num2;
    NSString *_numTemp;
    NSString *_sign;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _numTemp = @"";
    _num1=@"";
    _num2=@"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numBtn:(UIButton *)sender {

    _numTemp = [NSString stringWithFormat:@"%@%ld",_numTemp,(long)sender.tag];
    NSLog(@"%@",_numTemp);
    [self display];
    NSLog(@"%@",_numDisplay);
}

- (IBAction)mathBtn:(UIButton *)sender {
    _num1 = _numTemp;
    _numTemp=@"";
    self.numDisplay.text = @"";
    _sign = [NSString stringWithFormat:@"%ld",(long)sender.tag];
    
}

- (IBAction)resultBtn:(UIButton *)sender {
   
    if ([_sign isEqualToString: @"10"]) {
        _num2 = _numTemp;
        double sum;
        sum = [_num1 doubleValue]+[_num2 doubleValue];
        _numTemp = [NSString stringWithFormat:@"%f",sum];
        [self display];
        _numTemp = @"";
    }else if([_sign isEqualToString:@"20"]){
        _num2 = _numTemp;
        double sum;
        sum = [_num1 doubleValue]-[_num2 doubleValue];
        _numTemp = [NSString stringWithFormat:@"%f",sum];
        [self display];
         _numTemp = @"";
    }else if ([_sign isEqualToString:@"30"]){
        _num2 = _numTemp;
        double sum;
        sum = [_num1 doubleValue]*[_num2 doubleValue];
        _numTemp = [NSString stringWithFormat:@"%f",sum];
        [self display];
         _numTemp = @"";
    }else if ([_sign isEqualToString:@"40"]){
        _num2 = _numTemp;
        double sum;
        sum = [_num1 doubleValue]/[_num2 doubleValue];
        _numTemp = [NSString stringWithFormat:@"%f",sum];
        [self display];
         _numTemp = @"";
    }
    
   }

- (IBAction)dotBtn:(UIButton *)sender {
}

- (IBAction)clearBtn:(UIButton *)sender {
    _numTemp = @"";
    _num1=@"";
    _num2=@"";
    [self display];
}

- (IBAction)deleteBtn:(UIButton *)sender {
    if (_numTemp.length!=0) {
        _numTemp = [_numTemp substringToIndex:_numTemp.length-1];
        [self display];
    }
    else {
        _numDisplay.text=@"没得删啦！";
    }

}

- (void)display{
    [self.numDisplay setText:[NSString stringWithFormat:@"%@",_numTemp]];
}

@end
