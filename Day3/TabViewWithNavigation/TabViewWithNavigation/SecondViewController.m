//
//  SecondViewController.m
//  TabViewWithNavigation
//
//  Created by Esraa Hassan on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goToDetails:(UIButton *)sender {
    NSLog(@"hello");
    ThirdViewController *thirdView=[self.storyboard instantiateViewControllerWithIdentifier:@"thirdView"];
    [self.navigationController pushViewController:thirdView animated:NO];
    
}
@end
