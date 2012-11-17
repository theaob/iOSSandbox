//
//  ViewController.m
//  DataSources
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize moodlist;

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [moodlist count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return [moodlist objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component
{
    UIColor * color;
    
    switch (row) {
        case 0:
            color = [UIColor grayColor];
            break;
        case 1:
            color = [UIColor redColor];
            break;
            
        case 2:
            color = [UIColor cyanColor];
            break;
            
        case 3:
            color = [UIColor orangeColor];
            break;
            
        case 4:
            color = [UIColor yellowColor];
            break;
            
        case 5:
            color = [UIColor magentaColor];
            break;
            
        case 6:
            color = [UIColor greenColor];
            break;
            
        default:
        {
            color = [UIColor whiteColor];
        }
    }
    
self.view.backgroundColor = color;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    moodlist = [[NSArray alloc]
                initWithObjects:@"Nice",
                @"Bad",
                @"Cool",
                @"Fuckedup",
                @"Smoked",
                @"Assfucked",
                nil];
}


@end
