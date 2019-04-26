//
//  ViewController.h
//  LoginAndRegistration
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "SetImage.h"

@interface ViewController : UIViewController<UIAlertViewDelegate,MKMapViewDelegate,SetImage>
@property (weak, nonatomic) IBOutlet UITextField *NameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *phoneOutLet;
@property (weak, nonatomic) IBOutlet UITextField *passwordOutlet;
@property (weak, nonatomic) IBOutlet UITextField *AgeOutlet;
@property (weak, nonatomic) IBOutlet UILabel *latOutlet;
@property (weak, nonatomic) IBOutlet UILabel *longOutlet;

- (IBAction)signUpBtn:(UIButton *)sender;
- (IBAction)pickPhotoBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *userImg;
- (IBAction)clickOnMap:(UITapGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

