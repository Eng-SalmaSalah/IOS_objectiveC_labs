//
//  myViewController.m
//  Colleagues
//
//  Created by Esraa Hassan on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameLabel.text=_name;
    _idLabel.text=_identifier;
    _ageLabel.text=_ageValue;
    _emailLabel.text=_email;
    _phoneLabel.text=_phone;
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

@end
