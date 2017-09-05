//
//  Directory.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "Directory.h"

@interface Directory ()

@property (strong, nonatomic) NSMutableArray <Restaurant *> *restaurants;

@end

@implementation Directory

//- (NSArray *)listRestaurants {
//    
//}

- (void)addRestaurant:(Restaurant *)resto {
    
    [self.restaurants addObject:resto];
    NSLog(@"%@", self.restaurants);
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
