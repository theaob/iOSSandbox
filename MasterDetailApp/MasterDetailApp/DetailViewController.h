//
//  DetailViewController.h
//  MasterDetailApp
//
//  Created by Onur Baykal on 17.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
