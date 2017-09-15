//
//  City.h
//  Swift project
//
//  Created by Ludovic Ollagnier on 15/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, VilleFleurie) {
    VilleFleurieNon,
    VilleFleurieUneFleur,
    VilleFleurieDeuxFleurs
};

@interface City : NSObject

@property (strong, nonatomic) NSString* nom;
@property (nonatomic) NSInteger nbHabitant;
@property (strong, nonatomic, nullable) NSArray<NSString *> *quartiers;
@property (nonatomic) VilleFleurie flowerPower;

- (instancetype)initWithName:(NSString *)name habitants:(NSInteger)hab quartier:(nullable NSArray<NSString *>*)quartiers;

- (BOOL)removeItemAtURL:(NSURL*)url error:(NSError **)error;

@end
NS_ASSUME_NONNULL_END
