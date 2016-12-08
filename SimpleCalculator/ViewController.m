//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Student-003 on 17/10/16.
//  Copyright © 2016 Felix-vishal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    operatorpressed=false;
    _firstentry=NULL;
    _secondentry=NULL;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Clear:(id)sender {
    
    _labeloutput.text=NULL;
    _firstentry=NULL;
    _secondentry=NULL;
    operatorpressed=NULL;
    
}

- (IBAction)Add:(id)sender {
    
    add=TRUE;
    operatorpressed=TRUE;
}

- (IBAction)Minus:(id)sender {
    
    add=false;
    operatorpressed=true;
}

- (IBAction)Equal:(id)sender {
    
    if(add==false)
    {
        int outputnum=[_firstentry intValue]-[_secondentry intValue];
        _labeloutput.text=[NSString stringWithFormat:@"%i",outputnum];
        
    }
    else{
        int outputnum=[_firstentry intValue]+[_secondentry intValue];
        _labeloutput.text=[NSString stringWithFormat:@"%i",outputnum];
    }
    
    operatorpressed=false;
    _firstentry=NULL;
    _secondentry=NULL;
    
    
    
}

-(IBAction)number:(UIButton *)sender
{
     int tag=sender.tag;
    if(operatorpressed==FALSE)
    {
        if(_firstentry==NULL)
        {
            _firstentry=[NSString stringWithFormat:@"%d",tag];
            _labeloutput.text=_firstentry;
        }
        
        else
        {
            _firstentry=[NSString stringWithFormat:@"%@", _firstentry];
            _labeloutput.text=_firstentry;
        }
        
    }
    else{
        if(_secondentry==NULL)
        {
            _secondentry=[NSString stringWithFormat:@"%d",tag];
            _labeloutput.text=_secondentry;

        }
        else{
          _secondentry=[NSString stringWithFormat:@"%@", _secondentry];
            _labeloutput.text=_secondentry;

        }
    }
    
    
    
}






@end
