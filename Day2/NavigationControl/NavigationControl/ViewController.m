//
//  ViewController.m
//  NavigationControl
//
//  Created by JETS Mobile Lab -  on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)welcomeUser:(UIButton *)sender {
    SecondViewController *secondViewController= [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    secondViewController.userName=_nameTextField.text;
    
    secondViewController.clearText=self;
    [self.navigationController pushViewController:secondViewController animated:NO];
}
-(void) clearTextField{
    _nameTextField.text=@" ";
}
@end
