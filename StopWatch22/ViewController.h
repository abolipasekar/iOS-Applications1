//
//  ViewController.h
//  StopWatch22
//
//  Created by Student-003 on 15/11/16.
//  Copyright © 2016 DK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int sec,min,hour;
}

@property (weak, nonatomic) IBOutlet UIButton *Start;
@property (weak, nonatomic) IBOutlet UIButton *Stop;
@property (weak, nonatomic) IBOutlet UILabel *hourslab;
- (IBAction)start:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *minlabl;
- (IBAction)stop:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *secLabl;
@property(nonatomic,retain) NSTimer *timer1;
@end

