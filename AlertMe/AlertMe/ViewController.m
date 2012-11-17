//
//  ViewController.m
//  AlertMe
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIAlertView * myAlert = [[UIAlertView alloc]
                             initWithTitle:@"Alert!"
                             message:@"This is the first successful alert"
                             delegate:nil
                             cancelButtonTitle:@"İptal"
                             otherButtonTitles:@"Tamam",
                             nil];
    
    [myAlert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
