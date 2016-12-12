//
//  ViewController.m
//  WhereAmIApplication
//
//  Created by Aboli on 12/12/16.
//  Copyright © 2016 Aboli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   // [_mapview setShowsUserLocation:YES];
    _mapview.showsBuildings=YES;
    _mapview.showsUserLocation=YES;
    
    [self.view addSubview:_mapview];
    
    _locationManager =[CLLocationManager new];
    
    if ([_locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
       
        [_locationManager requestWhenInUseAuthorization];
        
    }
    

    [_locationManager startUpdatingLocation];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation
{
    MKPinAnnotationView *annView=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    annView.pinTintColor = [UIColor blueColor];
    return annView;
}
 */

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
   // [self mapViewWillStartLoadingMap:mapView];
    MKMapCamera *camera=[MKMapCamera cameraLookingAtCenterCoordinate:userLocation.coordinate fromEyeCoordinate:CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude) eyeAltitude:10000];
    [mapView setCamera:camera animated:YES];
    
}

@end
