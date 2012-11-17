//
//  ViewController.m
//  BasicInteraction
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize theLabel;
@synthesize textField;

-(IBAction)changeLabel:(id)sender
{
    [theLabel setText:
     [[NSString alloc]
      initWithFormat:@"Hello, %@",
      [textField text]]];
    
    [textField resignFirstResponder];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissKeyboard:(id)sender {
    [textField resignFirstResponder];
}
@end
