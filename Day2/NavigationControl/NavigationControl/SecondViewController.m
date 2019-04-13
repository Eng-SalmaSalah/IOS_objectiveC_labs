//
//  SecondViewController.m
//  NavigationControl
//
//  Created by JETS Mobile Lab -  on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *helloUser=@"hello ";
    self.title=@"Second View";
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc] initWithTitle:@"done" style:(UIBarButtonItemStyleDone) target:self action:@selector(done)];
    [self.navigationItem setRightBarButtonItem:doneBtn];
    _nameLabel.text=[helloUser stringByAppendingString:_userName];
}

-(void)done{
    [_clearText clearTextField];
    [self.navigationController popViewControllerAnimated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
