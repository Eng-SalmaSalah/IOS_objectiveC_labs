//
//  loginViewController.h
//  LoginAndRegistration
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface loginViewController : ViewController<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userPhoneOutlet;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordOutlet;
- (IBAction)signIn:(UIButton *)sender;

@end
