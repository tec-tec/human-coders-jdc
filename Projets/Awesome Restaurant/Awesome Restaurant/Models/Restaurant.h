//
//  Restaurant.h
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestaurantOld : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *style;
@property (nonatomic) NSUInteger notation;
@property (nonatomic) BOOL alreadyVisited;

- (instancetype)initWithName:(NSString *)name address: (NSString *) address andStyle: (NSString *)style;
- (void)open;
- (void)close;
+ (RestaurantOld*)mcDonalds;

@end
