//
//  ViewController.m
//  Map_7Won
//
//  Created by student14 on 11/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FiveViewController.h"
#import "SixthViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _map.delegate=self;
     CLLocationCoordinate2D loc1,loc2,loc3,loc4,loc5,loc6;
    
    _point1=[[MKPointAnnotation alloc]init];
    _point1.title=@"Great Wall of China";
    _point1.subtitle=@"China";
    loc1.latitude=40.4319;
    loc1.longitude=116.5704;
    _point1.coordinate=loc1;
    
    _point2=[[MKPointAnnotation alloc]init];
    _point2.title=@"Christ the Redeemer";
    _point2.subtitle=@"Brazil";
    loc2.latitude=22.9519;
    loc2.longitude=43.2105;
    _point2.coordinate=loc2;
    
    
    _point3=[[MKPointAnnotation alloc]init];
    _point3.title=@"Machu Picchu";
    _point3.subtitle=@"Peru";
    loc3.latitude=13.1631;
    loc3.longitude=13.1631;
    _point3.coordinate=loc3;

    _point4=[[MKPointAnnotation alloc]init];
    _point4.title=@"Pyramid";
    _point4.subtitle=@"Egypt";
    loc4.latitude=20.6843;
    loc4.longitude=88.5678;
    _point4.coordinate=loc4;
    
    
    _point5=[[MKPointAnnotation alloc]init];
    _point5.title=@"Colosseum";
    _point5.subtitle=@"Rome, Italy";
    loc5.latitude=41.8902;
    loc5.longitude=12.4922;
    _point5.coordinate=loc5;
    
    _point6=[[MKPointAnnotation alloc]init];
    _point6.title=@"Taj Majal";
    _point6.subtitle=@"India";
    loc6.latitude=27.1750;
    loc6.longitude=78.0422;
    _point6.coordinate=loc6;
    
    
    [self.map addAnnotation:_point6];
    [self.map addAnnotation:_point5];
    [self.map addAnnotation:_point4];
    [self.map addAnnotation:_point3];
    [self.map addAnnotation:_point2];
    [self.map addAnnotation:_point1];
    
    [self.view addSubview:_map];
    
}
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]init];
    pin.canShowCallout=YES;
    
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    UIImageView *imgeview=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 40, 30)];
    
    if(annotation==_point1)
    {
     imgeview.image=[UIImage imageNamed:@"wonder4"];
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn1.frame=CGRectMake(60, 15, 20, 20);
        [btn1 addTarget:self action:@selector(btnclick1) forControlEvents:UIControlEventTouchUpInside];
        pin.rightCalloutAccessoryView=btn1;
        [view1 addSubview:btn1];

    }
    else if (annotation==_point2)
    {
       imgeview.image=[UIImage imageNamed:@"wonder22"];
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn2.frame=CGRectMake(60, 15, 20, 20);
        [btn2 addTarget:self action:@selector(btnclick2) forControlEvents:UIControlEventTouchUpInside];
        pin.rightCalloutAccessoryView=btn2;
        [view1 addSubview:btn2];

    }
    else if (annotation==_point3)
    {
        imgeview.image=[UIImage imageNamed:@"petra"];
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn3.frame=CGRectMake(60, 15, 20, 20);
        [btn3 addTarget:self action:@selector(btnclick3) forControlEvents:UIControlEventTouchUpInside];
        pin.rightCalloutAccessoryView=btn3;
        [view1 addSubview:btn3];

    }
    else if (annotation==_point4)
    {
        imgeview.image=[UIImage imageNamed:@"wonder6"];
        UIButton *btn4=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn4.frame=CGRectMake(60, 15, 20, 20);
        [btn4 addTarget:self action:@selector(btnclick4) forControlEvents:UIControlEventTouchUpInside];
        pin.rightCalloutAccessoryView=btn4;
        [view1 addSubview:btn4];

    }
    else if (annotation==_point5)
    {
        imgeview.image=[UIImage imageNamed:@"wonder6"];
        UIButton *btn5=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn5.frame=CGRectMake(60, 15, 20, 20);
        [btn5 addTarget:self action:@selector(btnclick5) forControlEvents:UIControlEventTouchUpInside];
        pin.rightCalloutAccessoryView=btn5;
        [view1 addSubview:btn5];

    }
    else
    {
     imgeview.image=[UIImage imageNamed:@"wonder5"];
        UIButton *btn6=[UIButton buttonWithType:UIButtonTypeInfoLight];
        btn6.frame=CGRectMake(60, 15, 20, 20);
        [btn6 addTarget:self action:@selector(btnclick6) forControlEvents:UIControlEventTouchUpInside];
        pin.rightCalloutAccessoryView=btn6;
        [view1 addSubview:btn6];
    }
    
    [view1 addSubview:imgeview];
    
 //   [view1 addSubview:btn6];

    pin.rightCalloutAccessoryView=view1;
    
    return pin;
    
}

-(void)btnclick1
{
    NSLog(@"btn click");
   
        FirstViewController *p1=[[FirstViewController alloc]init];
    [self.navigationController pushViewController:p1 animated:YES];
}
-(void)btnclick2
{
    NSLog(@"btn click");
    
    SecViewController *p2=[[SecViewController alloc]init];
    [self.navigationController pushViewController:p2 animated:YES];
}
-(void)btnclick3
{
    NSLog(@"btn click");
    
    ThirdViewController *p3=[[ThirdViewController alloc]init];
    [self.navigationController pushViewController:p3 animated:YES];
}
-(void)btnclick4
{
    NSLog(@"btn click");
    
    FourthViewController *p4=[[FourthViewController alloc]init];
    [self.navigationController pushViewController:p4 animated:YES];
}
-(void)btnclick5
{
    NSLog(@"btn click");
    
    FiveViewController *p5=[[FiveViewController alloc]init];
    [self.navigationController pushViewController:p5 animated:YES];
}
-(void)btnclick6
{
    NSLog(@"btn click");
    
    SixthViewController *p6=[[SixthViewController alloc]init];
    [self.navigationController pushViewController:p6 animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
