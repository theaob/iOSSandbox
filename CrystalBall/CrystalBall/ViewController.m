//
//  ViewController.m
//  CrystalBall
//
//  Created by Onur Baykal on 21.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize predictionLabel;
@synthesize predictionTexts;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    [self.view insertSubview:imageView atIndex:0];
    predictionTexts = [[NSArray alloc] initWithObjects:@"Ask later", @"Definately No", @"Probaby Not", @"Certainly", @"Soon", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)predictButton:(UIButton *)sender
{
    [predictionLabel setText:[self selectPrediontion]];
}

- (NSString *) selectPrediontion
{
    return [self.predictionTexts objectAtIndex:arc4random_uniform([predictionTexts count])];
}

@end
