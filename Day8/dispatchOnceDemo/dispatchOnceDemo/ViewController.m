//
//  ViewController.m
//  dispatchOnceDemo
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "DBManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DBManager *db1=[DBManager sharedInstance];
    DBManager *db2=[DBManager sharedInstance];
    DBManager *db3=[DBManager sharedInstance];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
