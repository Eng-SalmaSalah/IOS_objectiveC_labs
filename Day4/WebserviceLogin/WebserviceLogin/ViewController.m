//
//  ViewController.m
//  WebserviceLogin
//
//  Created by JETS Mobile Lab -  on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)login:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *user;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation ViewController{
    NSMutableData *receivedData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)login:(UIButton *)sender {
    NSString *userName=_user.text;
    NSString *password=_password.text;
    NSString *link=@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone";
    link=[link stringByReplacingOccurrencesOfString:@"yourName" withString:userName];
    link=[link stringByReplacingOccurrencesOfString:@"yourPhone" withString:password];
    NSURL *url=[NSURL URLWithString:link];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    [connection start];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    receivedData=[[NSMutableData alloc]init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [receivedData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingAllowFragments error:nil];
    NSString *status=[dict objectForKey:@"status"];
    if([status isEqualToString:(@"FAILING")]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registration Failed"
                                                        message:@"User already registered"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:@"Try again",nil];
        [alert show];
    }
    else
    {
        
    }
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    // the user clicked OK
    if (buttonIndex == 0) {
        
    }
    else if(buttonIndex==1){
        _user.text=@"";
        _password.text=@"";
        [_user becomeFirstResponder];
    }
    
}
@end
