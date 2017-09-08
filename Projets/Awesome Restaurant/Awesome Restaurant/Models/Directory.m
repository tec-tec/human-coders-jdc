//
//  Directory.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "Directory.h"
#import "Restaurant+CoreDataProperties.h"

@interface Directory ()

@property (strong, nonatomic) NSMutableArray <Restaurant *> *restaurants;

@end

@implementation Directory

- (NSArray *)listRestaurantWithFilter:(nonnull NSString *)pattern {

    if (pattern) {
        // Filter the array
        NSMutableArray * a = [NSMutableArray array];
        [a addObject:pattern];
        return a;
    } else {
        return [self listRestaurants];
    }
}

- (NSArray *)listRestaurants {
    return [NSArray arrayWithArray:self.restaurants];
}

- (void)addRestaurant:(Restaurant *)resto {
    
//    [self listRestaurantWithFilter:nil];
    
    [self.restaurants addObject:resto];
    NSLog(@"%@", self.restaurants);

    NSNotificationCenter *notCenter = [NSNotificationCenter defaultCenter];
    [notCenter postNotificationName:@"ModelUpdated" object:nil];
}

// Redéfinition du getter pour faire de la lazy instanciation
// On check si l'objet existe, et sinon on le retourne pour être certain de ne jamais oublier de l'initilaiser.
- (NSMutableArray<Restaurant *> *)restaurants {
    
    if (_restaurants == nil) {
        _restaurants = [[NSMutableArray alloc] init];
    }
    
    return _restaurants;
}
@end
