//
//  loginViewController.m
//  LoginAndRegistration
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "loginViewController.h"
#import "ProfileViewController.h"

@interface loginViewController (){
    NSUserDefaults *userDefaults;
}

@end

@implementation loginViewController{
}

- (void)viewDidLoad {
    [super viewDidLoad];
    userDefaults=[NSUserDefaults standardUserDefaults];
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

- (IBAction)signIn:(UIButton *)sender {
    NSString *phone=[userDefaults objectForKey:@"phone"];
    NSString *password=[userDefaults objectForKey:@"password"];
    if(([phone isEqualToString: _userPhoneOutlet.text])&&([password isEqualToString: _userPasswordOutlet.text])){
        ProfileViewController *profile=[self.storyboard instantiateViewControllerWithIdentifier:@"profile"];
        [self setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
        [self presentViewController:profile animated:YES completion:nil];
    }
    else{
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Login" message:@"Please enter valid phone number and password" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if(buttonIndex==0){
        _userPhoneOutlet.text=@"";
        _userPasswordOutlet.text=@"";
    }
}
@end
