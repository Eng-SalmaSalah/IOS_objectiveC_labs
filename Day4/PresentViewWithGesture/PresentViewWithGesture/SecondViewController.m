//
//  SecondViewController.m
//  PresentViewWithGesture
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *recognizer=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(dismissOperation)];
    recognizer.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:recognizer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissOperation{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

