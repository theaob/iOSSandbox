//
//  Course.h
//  CoreDataExample
//
//  Created by Onur Baykal on 25.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSDate * releaseDate;
@property (nonatomic, retain) NSString * title;

-(void) simpleMethod;

@end
