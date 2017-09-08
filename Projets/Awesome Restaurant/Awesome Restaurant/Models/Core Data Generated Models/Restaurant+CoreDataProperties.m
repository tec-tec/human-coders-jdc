//
//  Restaurant+CoreDataProperties.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Restaurant+CoreDataProperties.h"

@implementation Restaurant (CoreDataProperties)

+ (NSFetchRequest<Restaurant *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Restaurant"];
}

@dynamic name;
@dynamic address;
@dynamic style;
@dynamic alreadyVisited;
@dynamic notation;

@end
