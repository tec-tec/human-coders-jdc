//
//  Editor+CoreDataProperties.m
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Editor+CoreDataProperties.h"

@implementation Editor (CoreDataProperties)

+ (NSFetchRequest<Editor *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Editor"];
}

@dynamic address;
@dynamic name;
@dynamic authors;

@end
