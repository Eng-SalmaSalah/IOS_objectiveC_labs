//
//  ViewController.m
//  Colleagues
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
    count=0;
    colleagues=[NSMutableArray arrayWithObjects:@"salma",@"radya",@"nouran",@"sahar", nil];
    _friendLabel.text=colleagues[count];
}


- (IBAction)leftBtn:(UIButton *)sender {
    if(count==0)
    {
        count=[colleagues count];
    }
    
    count--;
    _friendLabel.text=colleagues[count];
 
}
- (IBAction)rightBtn:(id)sender {
    if(count==[colleagues count]-1)
    {
        count=-1;
    }
    
    count++;
    _friendLabel.text=colleagues[count];
}
@end
