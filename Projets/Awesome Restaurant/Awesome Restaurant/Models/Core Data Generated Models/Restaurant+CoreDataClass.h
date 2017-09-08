//
//  Restaurant+CoreDataClass.h
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Restaurant : NSManagedObject

+ (Restaurant*)mcDonalds;
+ (Restaurant *)mcDonaldsWithContext:(NSManagedObjectContext*)context;

- (instancetype)initWithName:(NSString *)name address: (NSString *) address andStyle: (NSString *)style;
- (instancetype)initWithName:(NSString *)name address: (NSString *) address andStyle: (NSString *)style inContext: (NSManagedObjectContext*)context;

@end

NS_ASSUME_NONNULL_END

#import "Restaurant+CoreDataProperties.h"
