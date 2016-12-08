//
//  ViewController.m
//  Primenumber
//
//  Created by Student-003 on 07/10/16.
//  Copyright © 2016 Felix-rohit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    
    
    
    // Do any additional setup after loading the view.
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnclick:(id)sender {
    int num;
    num=[_tf1.text intValue];
    
    
    if((num%2)==!0)
    {
        NSLog(@"prime number");
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"prime No"
                        message: @""
                        delegate: self
                        cancelButtonTitle:@"Cancel"
                    otherButtonTitles:@"OK",nil];
        [alert show];
    }
    else{
        NSLog(@"not prime no");
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"not a prime No"
                            message: @""
                            delegate: self
                            cancelButtonTitle:@"Cancel"
                        otherButtonTitles:@"OK",nil];
        [alert show];
        
    }
    

}
@end
