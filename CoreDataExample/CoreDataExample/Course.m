//
//  Course.m
//  CoreDataExample
//
//  Created by Onur Baykal on 25.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "Course.h"


@implementation Course

@dynamic author;
@dynamic releaseDate;
@dynamic title;

- (void) simpleMethod
{
    NSLog(@"Hello!");
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"%@ by %@", self.author, self.title];
}

@end
