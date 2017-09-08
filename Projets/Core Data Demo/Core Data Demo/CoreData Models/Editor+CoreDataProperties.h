//
//  Editor+CoreDataProperties.h
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Editor+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Editor (CoreDataProperties)

+ (NSFetchRequest<Editor *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *address;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Author *> *authors;

@end

@interface Editor (CoreDataGeneratedAccessors)

- (void)addAuthorsObject:(Author *)value;
- (void)removeAuthorsObject:(Author *)value;
- (void)addAuthors:(NSSet<Author *> *)values;
- (void)removeAuthors:(NSSet<Author *> *)values;

@end

NS_ASSUME_NONNULL_END
