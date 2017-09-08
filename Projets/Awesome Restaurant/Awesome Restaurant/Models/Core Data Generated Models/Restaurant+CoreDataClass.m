//
//  Restaurant+CoreDataClass.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Restaurant+CoreDataClass.h"
#import "CoreDataManager.h"

@implementation Restaurant

+ (Restaurant *)mcDonalds {

    return [self mcDonaldsWithContext:[[[CoreDataManager sharedManager] persistentContainer] viewContext]];
}

+ (Restaurant *)mcDonaldsWithContext:(NSManagedObjectContext*)context {

    Restaurant *mcDo = [[Restaurant alloc] initWithContext:context];
    mcDo.name = @"McDonalds";
    mcDo.address = @"1 Rue du burger, SteakVille";
    mcDo.notation = 5;
    mcDo.alreadyVisited = YES;

    return mcDo;
}

- (instancetype)initWithName:(NSString *)name address:(NSString *)address andStyle:(NSString *)style {
    return [self initWithName:name address:address andStyle:style inContext:[[[CoreDataManager sharedManager] persistentContainer] viewContext]];
}

- (instancetype)initWithName:(NSString *)name address:(NSString *)address andStyle:(NSString *)style inContext:(nonnull NSManagedObjectContext *)context {
    self = [super initWithContext:context];
    if (self) {
        self.name = name;
        self.address = address;
        self.style = style;
    }
    return self;
}

@end
