//
//  ViewController.m
//  ValidationNumberVsText
//
//  Created by JETS Mobile Lab -  on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (IBAction)checkNumBtn:(id)sender {
    NSString *userInput=[NSString new];
    userInput=_textFieldOutlet.text;
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    NSNumber *number = [formatter numberFromString:userInput];
    
    if (number) {
        _labelOutlet.text=@"input is a number";
    } else {
        _labelOutlet.text=@"input is not a number";
    }
    
}

- (IBAction)checkTxtBtn:(UIButton *)sender {
    NSString *userInput;
    userInput=_textFieldOutlet.text;
}




@end

