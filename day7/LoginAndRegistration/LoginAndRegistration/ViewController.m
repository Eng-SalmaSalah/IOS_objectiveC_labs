//
//  ViewController.m
//  LoginAndRegistration
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "loginViewController.h"
#import "ImagesCollectionViewController.h"
#import "userLocationAnnotation.h"


@interface ViewController (){
    NSUserDefaults *userDefaults;

    userLocationAnnotation *annotation;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:@"user-icon-placeholder" forKey:@"image"];
    annotation=[userLocationAnnotation new];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)signUpBtn:(UIButton *)sender {
    if(([_NameOutlet.text isEqual:@""])||([_passwordOutlet.text isEqual:@""])||([_phoneOutLet.text isEqual:@""])||([_latOutlet.text isEqual:@""])||([_longOutlet.text isEqual:@""])||([_AgeOutlet.text isEqual:@""])){
        UIAlertView *alertFillData=[[UIAlertView alloc]initWithTitle:@"Failed To Register" message:@"Fill in all fields please" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        alertFillData.tag=0;
        [alertFillData show];
    }else{
        [userDefaults setObject:_NameOutlet.text forKey:@"name"];
        [userDefaults setObject:_phoneOutLet.text forKey:@"phone"];
        [userDefaults setObject:_passwordOutlet.text forKey:@"password"];
        [userDefaults setObject:_latOutlet.text forKey:@"lat"];
        [userDefaults setObject:_longOutlet.text forKey:@"long"];
        [userDefaults setObject:_AgeOutlet.text forKey:@"age"];
        
        NSMutableString *welcome= [[NSMutableString alloc]initWithString:@"Welcome "];
        [welcome appendString:_NameOutlet.text];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Registered Successfully" message:welcome delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        alert.tag=1;
        [alert show];
    }
}
- (IBAction)pickPhotoBtn:(id)sender {
    ImagesCollectionViewController *imagesVC=[self.storyboard instantiateViewControllerWithIdentifier:@"imagesVC"];
    imagesVC.registerationView=self;
    [self.navigationController pushViewController:imagesVC animated:NO
     ];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if(alertView.tag==1){
        if(buttonIndex==0){
            [self.navigationController popViewControllerAnimated:NO];
        }
    }
}

-(void)setUserImg{
    _userImg.image=[UIImage imageNamed:[userDefaults objectForKey:@"image"]];
}

- (IBAction)clickOnMap:(UITapGestureRecognizer *)sender {
    CGPoint touchPoint=[sender locationInView:_mapView];
    CLLocationCoordinate2D touchCoordinate=[_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    
    annotation.coordinate=touchCoordinate;
    annotation.title=@"My Location";
    [_mapView addAnnotation:annotation];
    
    NSNumber *latitude= [NSNumber numberWithDouble:touchCoordinate.latitude];
    _latOutlet.text=[latitude stringValue];
    
    NSNumber *longitude= [NSNumber numberWithDouble:touchCoordinate.longitude];
    _longOutlet.text=[longitude stringValue];
    
}
@end
