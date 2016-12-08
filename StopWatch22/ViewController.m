//
//  ViewController.m
//  StopWatch22
//
//  Created by Student-003 on 15/11/16.
//  Copyright © 2016 DK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _secLabl.text=@"00";
    _minlabl.text=@"00";
    _hourslab.text=@"00";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender
{
    
    _timer1=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(changevalue) userInfo:nil repeats:YES];
    
    
}
-(void)changevalue
{
    sec=sec+1;
    NSString *str4=[[NSString alloc]initWithFormat:@"%d",sec];
    _secLabl.text=str4;
    if(sec>59)
    {
        min++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",min];
        _minlabl.text=str;
        sec=0;
        
    }
    else if (min>59)
    {
        hour++;
        NSString *str1=[[NSString alloc]initWithFormat:@"%d",hour];
        _hourslab.text=str1;
        min=0;
    }
    
}
- (IBAction)stop:(id)sender {
    [_timer1 invalidate];
    

}
@end
