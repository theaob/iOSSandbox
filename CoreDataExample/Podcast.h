//
//  Podcast.h
//  CoreDataExample
//
//  Created by Onur Baykal on 26.11.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Podcast : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * duration;
@property (nonatomic, retain) NSNumber * isPlayed;
@property (nonatomic, retain) NSDate * releaseDate;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * sectionHeader;

@end
