//
//  PunsTableViewCell.h
//  Puns
//
//  Created by Onur Baykal on 25.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PunsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *punLabel;
@property (weak, nonatomic) IBOutlet UILabel *punRatingLabel;

@end
