//
//  ViewController.h
//  CrystalBall
//
//  Created by Onur Baykal on 21.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray * predictionTexts;

- (IBAction)predictButton:(UIButton *)sender;

@end
