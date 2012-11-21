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

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = @"";
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = @"";
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [predictionLabel setText:[self selectPrediontion]];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(motion == UIEventSubtypeMotionShake)
    {
        [predictionLabel setText:[self selectPrediontion]];
    }
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

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

- (NSString *) selectPrediontion
{
    return [self.predictionTexts objectAtIndex:arc4random_uniform([predictionTexts count])];
}

@end
