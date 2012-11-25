//
//  Pun.h
//  Puns
//
//  Created by Onur Baykal on 25.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pun : NSObject

@property NSString * punTitle;
@property int punRating;

+ (Pun *) initWithTitle:(NSString *) punTitle andPunRating:(int)rating;

@end
