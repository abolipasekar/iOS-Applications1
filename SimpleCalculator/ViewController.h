//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Student-003 on 17/10/16.
//  Copyright © 2016 Felix-vishal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL operatorpressed;
    BOOL add;
}

//@property (nonatomic) BOOL *operatorpressed;
//@property(nonatomic)BOOL *add;
@property(nonatomic,retain) NSString *firstentry;
@property(nonatomic,retain) NSString *secondentry, *tag1;


@property (weak, nonatomic) IBOutlet UILabel *labeloutput;

- (IBAction)Clear:(id)sender;
- (IBAction)Add:(id)sender;
- (IBAction)Minus:(id)sender;
- (IBAction)Equal:(id)sender;
-(IBAction)number:(UIButton *)sender;



@end

