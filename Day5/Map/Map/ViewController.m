//
//  ViewController.m
//  Map
//
//  Created by JETS Mobile Lab -  on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "MADAnnotation.h"

@interface ViewController ()
- (IBAction)click:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

#pragma mark:life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_mapView setZoomEnabled:YES];
    [_mapView setDelegate:self];
    //or _mapView.delegate=self;
    _locMgr=[CLLocationManager new];
    [_locMgr setDistanceFilter:kCLHeadingFilterNone];//y2dr y detect kol change
    [_locMgr setDesiredAccuracy:kCLLocationAccuracyBest];//best accuracy
    [_locMgr setDelegate:self];
    [_locMgr startUpdatingLocation];
    [_locMgr requestAlwaysAuthorization];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

#pragma mark:map view methods of delegate
- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    //awl ma a3ml click 3lshan a8yr location ttndh
    printf("region will change animated \n");
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    //awl ma aseb ede ttndh
    printf("region did change animated \n");}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    //lw 7bet adef action lma ados 3l annotation
    printf("annotation selected \n");
    //el annotation view gwah annotation property ele hya l object ele 3mlnah
    printf("%s",[view.annotation.title UTF8String]);
}

#pragma mark:LocationManager methods of delegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation *location =[locations lastObject];
    printf("lat: %f lng: %f \n",location.coordinate.latitude,location.coordinate.longitude);
    printf("updated\n");
}

#pragma mark:IBActions methods

- (IBAction)click:(UITapGestureRecognizer *)sender {
    //hena b3rfo hya5od l x w y mneen
    CGPoint touchPoint = [sender locationInView:_mapView];
    //kda h7wl l point ela lang w lat
    CLLocationCoordinate2D touchCoordinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    //a3ml obj mn l annotation
    MADAnnotation *annotation =[MADAnnotation new];
    //setCoordinates,title,subtitle
    annotation.coordinate=touchCoordinate;
    annotation.title=@"MAD";
    annotation.subtitle=@"jets";
    //add annotation to map
    [_mapView addAnnotation:annotation];
    
}
@end
