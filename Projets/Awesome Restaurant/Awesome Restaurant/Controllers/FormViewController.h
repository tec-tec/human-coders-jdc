//
//  ViewController.h
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Directory, ListViewController;

@protocol FormPreviousScreen <NSObject>

@required
- (void)formDisplayed;

@end

@interface FormViewController : UIViewController

@property (strong, nonatomic) UIColor *bgColor;
@property (strong, nonatomic) Directory *directory;

@property (weak, nonatomic) id<FormPreviousScreen> previousScreen;


@end

