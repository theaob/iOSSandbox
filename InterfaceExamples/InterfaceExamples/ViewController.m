//
//  ViewController.m
//  InterfaceExamples
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize selectedDate;

- (IBAction)displayDate:(id)sender {
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE"];
    
    NSString * dayOfTheWeek = [formatter stringFromDate:[selectedDate date]];
    
    
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Day of the Week" message:dayOfTheWeek delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alert show];
    
}
@end
