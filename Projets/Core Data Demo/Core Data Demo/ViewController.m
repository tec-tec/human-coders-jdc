//
//  ViewController.m
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "ViewController.h"
#import "CoreDatamanager.h"
#import "Book+CoreDataProperties.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getBooks];
}

- (void)getBooks {
    NSManagedObjectContext *context = CoreDatamanager.sharedManager.persistentContainer.viewContext;

    NSFetchRequest *request = [Book fetchRequest];
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"title CONTAINS[cd] %@", @"supér"];
    [request setPredicate:pred];

    NSError *error = nil;
    NSArray *results = [context executeFetchRequest:request error:&error];

    if (error == nil) {
        [results.firstObject title];
        NSLog(@"%@", results);
    }
}

- (void)createBook {

    NSManagedObjectContext *context = CoreDatamanager.sharedManager.persistentContainer.viewContext;

    Book *monBook = [[Book alloc] initWithContext:context];
    monBook.title = @"Super livre";

    [CoreDatamanager.sharedManager saveContext];
}

- (void)deleteBook:(Book *)book {
    NSManagedObjectContext *context = CoreDatamanager.sharedManager.persistentContainer.viewContext;

    [context deleteObject:book];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
