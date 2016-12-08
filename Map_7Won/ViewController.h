//
//  ViewController.h
//  Map_7Won
//
//  Created by student14 on 11/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>
@property (nonatomic,retain)MKMapView *map;
@property (nonatomic,retain)MKPointAnnotation *point1,*point2,*point3,*point4,*point5,*point6;


@end

