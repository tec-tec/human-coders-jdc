//
//  Restaurant+CoreDataProperties.h
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Restaurant+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Restaurant (CoreDataProperties)

+ (NSFetchRequest<Restaurant *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *address;
@property (nullable, nonatomic, copy) NSString *style;
@property (nonatomic) BOOL alreadyVisited;
@property (nonatomic) int16_t notation;

@end

NS_ASSUME_NONNULL_END
