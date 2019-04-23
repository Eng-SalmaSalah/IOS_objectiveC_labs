//
//  ViewController.m
//  PresentViewWithGesture
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *recognizer=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(next)];
    recognizer.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:recognizer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next{
    SecondViewController *secondViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    [self setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondViewController animated:YES completion:nil];
}


@end
