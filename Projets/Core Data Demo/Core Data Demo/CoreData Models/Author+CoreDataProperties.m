//
//  Author+CoreDataProperties.m
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Author+CoreDataProperties.h"

@implementation Author (CoreDataProperties)

+ (NSFetchRequest<Author *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Author"];
}

@dynamic firstName;
@dynamic lastName;
@dynamic books;
@dynamic editor;

@end
