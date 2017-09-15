//
//  City.m
//  Swift project
//
//  Created by Ludovic Ollagnier on 15/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "City.h"
#import "Swift_project-Swift.h"

@implementation City

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nbHabitant = 0;
        self.nom = @"";
        self.quartiers = @[];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name habitants:(NSInteger)hab quartier:(nullable NSArray*)quartiers
{
    self = [super init];
    if (self) {
        self.nom = name;
        self.nbHabitant = hab;
        self.quartiers = quartiers;
    }
    return self;
}

- (void)test {

    Quartier *q = [[Quartier alloc] initWithName:@"" sympa:AgreabilitéPasMal];

    NSLog(@"%@", q.name);
}

- (BOOL)removeItemAtURL:(NSURL*)url error:(NSError **)error {

    return YES;
}
@end
