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
@synthesize imageView;

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediction];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(motion == UIEventSubtypeMotionShake)
    {
        [self makePrediction];
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
    
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    [self.view insertSubview:imageView atIndex:0];
    NSMutableArray * animationImages = [[NSMutableArray alloc] init];
    for(int i = 1; i < 25; i++)
    {
        //NSLog();
        if( i < 10 )
        [animationImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cball0000%d", i]]];
        else
        [animationImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cball000%d", i]]];  
    }
    
    self.imageView.animationImages = animationImages;
    self.imageView.animationDuration = 1.0;
    self.imageView.animationRepeatCount = 1;
    predictionTexts = [[NSArray alloc] initWithObjects:@"Ask later", @"Definately No", @"Probaby Not", @"Certainly", @"Soon", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)makePrediction
{
    [self.imageView startAnimating];
    predictionLabel.text = [self.predictionTexts objectAtIndex:arc4random_uniform([predictionTexts count])];
    
    [UIView animateWithDuration:2.4 animations:^{
        self.predictionLabel.alpha = 1.0;
    }];
    
}

@end
