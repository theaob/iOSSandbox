//
//  ViewController.h
//  TableViewExample
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSDictionary * courses;

@property (nonatomic,strong) NSArray * keys;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
