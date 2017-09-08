//
//  CoreDatamanager.h
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface CoreDatamanager : NSObject

+ (CoreDatamanager *)sharedManager;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@end
