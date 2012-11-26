//
//  PodcastsTableViewController.h
//  CoreDataExample
//
//  Created by Onur Baykal on 26.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PodcastsTableViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext * managedObjectContext;

@end
