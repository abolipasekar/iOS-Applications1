//
//  CollectionTableViewController.h
//  collection
//
//  Created by student14 on 10/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CollectionTableViewController : UITableViewController<CLLocationManagerDelegate,MKMapViewDelegate>



@property(nonatomic,retain)NSMutableArray *array;
@property(nonatomic,retain)NSString *templbl;
@property(nonatomic,retain)NSMutableData *data;




@property(nonatomic,retain)CLLocationManager *manager;
@property(nonatomic,retain)MKMapView *map;
@property(nonatomic,retain)CLGeocoder *geocoder;





@end
