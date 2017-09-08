//
//  Book+CoreDataProperties.h
//  Core Data Demo
//
//  Created by Ludovic Ollagnier on 08/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

#import "Book+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Book (CoreDataProperties)

+ (NSFetchRequest<Book *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *collection;
@property (nonatomic) int16_t nbOfPages;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, retain) Author *author;

@end

NS_ASSUME_NONNULL_END
