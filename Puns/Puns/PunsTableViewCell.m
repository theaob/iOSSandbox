//
//  PunsTableViewCell.m
//  Puns
//
//  Created by Onur Baykal on 25.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "PunsTableViewCell.h"

@implementation PunsTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
