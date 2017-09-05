//
//  Directory.h
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"

@interface Directory : NSObject

- (void)addRestaurant:(Restaurant *)resto;
- (NSArray *)listRestaurants;

@end
