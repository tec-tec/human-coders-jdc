//
//  ViewController.h
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Directory;

@interface FormViewController : UIViewController

@property (strong, nonatomic) UIColor *bgColor;
@property (strong, nonnull, nonatomic) Directory *directory;

@end

