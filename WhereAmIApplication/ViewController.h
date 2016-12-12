//
//  ViewController.h
//  WhereAmIApplication
//
//  Created by Aboli on 12/12/16.
//  Copyright © 2016 Aboli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapview;

@property(nonatomic,retain)CLLocationManager *locationManager;
@end

