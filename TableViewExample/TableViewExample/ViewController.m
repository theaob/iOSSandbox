//
//  ViewController.m
//  TableViewExample
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize courses;
@synthesize keys;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    courses = [[NSDictionary alloc]
               initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"courses" ofType:@"plist"]];
    
    keys = [courses allKeys];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [keys count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    NSString * courseName = [keys objectAtIndex:indexPath.row];
    
    [[cell textLabel] setText:courseName];
    [[cell detailTextLabel] setText:[courses valueForKey:courseName]];
    
    NSString * cellImagePath = [[NSBundle mainBundle] pathForResource:@"cellimage" ofType:@"png"];
    
    UIImage * image = [[UIImage alloc] initWithContentsOfFile:cellImagePath];
    
    [[cell imageView] setImage:image];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

@end
