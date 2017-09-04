//
//  Restaurant.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

- (instancetype)initWithName:(NSString *)name address: (NSString *) address andStyle: (NSString *)style {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.address = address;
        self.style = style;
    }
    return self;
}

- (instancetype)init
{
    self = [self initWithName:@"No name" address:nil andStyle:nil];
    if (self) {
        
    }
    return self;
}
+ (Restaurant *)mcDonalds {
    
    Restaurant *mcDo = [[Restaurant alloc] init];
    mcDo.name = @"McDonalds";
    mcDo.address = @"1 Rue du burger, SteakVille";
    mcDo.notation = 5;
    mcDo.alreadyVisited = YES;
    
    return mcDo;
}

- (void)open {
    NSLog(@"Resto ouvert");
}

- (void)close {
    NSLog(@"Resto fermé");
}

@end
