//
//  Pun.m
//  Puns
//
//  Created by Onur Baykal on 25.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "Pun.h"

@implementation Pun

+ (Pun *) initWithTitle:(NSString *) punTitle andPunRating:(int)rating
{
    Pun * returnPun = [[Pun alloc] init];
    
    returnPun.punTitle = punTitle;
    returnPun.punRating = rating;
    
    return returnPun;
}

@end
