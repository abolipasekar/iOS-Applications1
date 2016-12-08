//
//  ViewController.h
//  Primenumber
//
//  Created by Student-003 on 07/10/16.
//  Copyright © 2016 Felix-rohit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tf1;

@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btnclick:(id)sender;

@end
