//
//  ViewController.m
//  CopyText
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


- (IBAction)btnInsert:(id)sender {
        _label.text=_textField.text;
}
@end
