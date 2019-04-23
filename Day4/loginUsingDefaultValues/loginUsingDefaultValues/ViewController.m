//
//  ViewController.m
//  loginUsingDefaultValues
//
//  Created by JETS Mobile Lab -  on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)signin:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *signInResultLabel;
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation ViewController{
    NSUserDefaults *userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults=[NSUserDefaults standardUserDefaults];
    [userDefaults setObject:
     @"salma" forKey:(@"userName")];
    [userDefaults setObject:
     @"666666" forKey:(@"password")];
}


- (IBAction)signin:(UIButton *)sender {
    NSString *savedUserName=[userDefaults objectForKey:@"userName"];
    NSString *savedPassword=[userDefaults objectForKey:@"password"];
    NSString *loggedInUserName=_userNameField.text;
    NSString *loggedInPassword=_passwordField.text;
    if(([savedUserName isEqualToString:(loggedInUserName)])&&([savedPassword isEqualToString :loggedInPassword])){
        
        NSMutableString *welcome=[NSMutableString alloc];
        welcome=[welcome initWithString:@"welcome "];
        [welcome appendString:savedUserName];
        _signInResultLabel.text=welcome;
    }
    else{
        _signInResultLabel.text=@"invalid user or password";
    }
    [userDefaults synchronize];
    
}
@end

