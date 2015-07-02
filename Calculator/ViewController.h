//
//  ViewController.h
//  Calculator
//
//  Created by Apple on 15/6/30.
//  Copyright (c) 2015年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *numDisplay;
- (IBAction)numBtn:(UIButton *)sender;
- (IBAction)mathBtn:(UIButton *)sender;
- (IBAction)resultBtn:(UIButton *)sender;
- (IBAction)dotBtn:(UIButton *)sender;
- (IBAction)clearBtn:(UIButton *)sender;
- (IBAction)deleteBtn:(UIButton *)sender;

@end

