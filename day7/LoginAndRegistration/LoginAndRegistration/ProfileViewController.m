//
//  ProfileViewController.m
//  LoginAndRegistration
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ProfileViewController.h"
#import "userLocationAnnotation.h"

@interface ProfileViewController (){
    NSUserDefaults *userDefaults;
    userLocationAnnotation *locAnnotation;
}

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    locAnnotation=[userLocationAnnotation new];
    userDefaults=[NSUserDefaults standardUserDefaults];
    //set name
    _nameOutlet.text=[userDefaults objectForKey:@"name"];
    
    //set age
    NSMutableString *age=[[NSMutableString alloc]initWithString:[userDefaults objectForKey:@"age"]];
    [age appendString:@" years old"];
    _ageOutlet.text=age;
    
    //set phone number
    _numOutlet.text=[userDefaults objectForKey:@"phone"];
    
    
    //set lat and long
    _latitude.text=[userDefaults objectForKey:@"lat"];
    _longitude.text=[userDefaults objectForKey:@"long"];
    
    //set image
    _imageOutlet.image=[UIImage imageNamed:[userDefaults objectForKey:@"image"]];
    
    //set location on map
    NSString *latitude=[[NSString alloc]initWithString:[userDefaults objectForKey:@"lat"]];
    double lat=[latitude doubleValue];
    NSString *longitude=[[NSString alloc]initWithString:[userDefaults objectForKey:@"long"]];
    double longit =[longitude doubleValue];
    CLLocationCoordinate2D locationCoordinate= CLLocationCoordinate2DMake(lat, longit);
    locAnnotation.coordinate=locationCoordinate;
    [_userLocMapView addAnnotation:locAnnotation];
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

@end
