//
//  Author+CoreDataProperties.h
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Author+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Author (CoreDataProperties)

+ (NSFetchRequest<Author *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *firstName;
@property (nullable, nonatomic, copy) NSString *lastName;
@property (nullable, nonatomic, retain) NSSet<Book *> *books;
@property (nullable, nonatomic, retain) Editor *editor;

@end

@interface Author (CoreDataGeneratedAccessors)

- (void)addBooksObject:(Book *)value;
- (void)removeBooksObject:(Book *)value;
- (void)addBooks:(NSSet<Book *> *)values;
- (void)removeBooks:(NSSet<Book *> *)values;

@end

NS_ASSUME_NONNULL_END
