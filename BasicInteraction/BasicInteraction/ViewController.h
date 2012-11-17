//
//  ViewController.h
//  BasicInteraction
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(IBAction)changeLabel:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *theLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)dismissKeyboard:(id)sender;

@end
