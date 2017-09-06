//
//  ViewController.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "ViewController.h"
#import "Directory.h"
#import "UIColor+ChartedColors.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *styleTextField;
@property (weak, nonatomic) IBOutlet UISlider *notationSlider;
@property (weak, nonatomic) IBOutlet UISwitch *visitedSwitch;
@property (weak, nonatomic) IBOutlet UILabel *notationLabel;
@property (strong, nonnull, nonatomic) Directory *directory;

- (IBAction)visitedSwitchValueChanged:(UISwitch *)sender;
- (IBAction)notationSliderValueChanged:(UISlider *)sender;
- (IBAction)save:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor alertColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)variousExamples {
    
    //Dictionnary examples
    NSMutableDictionary *dict2 = [@{@"firstName":@"Ludovic", @"lastName": @"Ollagnier"} mutableCopy];
    NSString *fName2 = dict2[@"firstName"];
    
    NSMutableDictionary <NSString*, NSString*> *mDict = [NSMutableDictionary dictionary];
    mDict[@"clé"] = @"valeur";

    //Set
    NSSet <NSString*> *set = [NSSet setWithArray:@[@"Lundi", @"Mardi"]];


    //Numbvers
    NSNumber *yes = [NSNumber numberWithBool:YES];
    [yes integerValue];

    NSNumber *no = @(-1);
}

- (IBAction)visitedSwitchValueChanged:(UISwitch *)sender {

    [self.notationSlider setEnabled: sender.isOn];
}

- (IBAction)notationSliderValueChanged:(UISlider *)sender {

    self.notationLabel.text = @([self roundedIntegerNotationValue]).stringValue;
}

- (IBAction)save:(id)sender {

    if (![self isFormValid]) {
        return;
    }

    Restaurant *newRestaurant = [[Restaurant alloc] initWithName:self.nameTextField.text address:self.addressTextField.text andStyle:self.styleTextField.text];
    newRestaurant.alreadyVisited = self.visitedSwitch.isOn;
    newRestaurant.notation = [self roundedIntegerNotationValue];

    [self.directory addRestaurant:newRestaurant];
}

- (BOOL)isFormValid {

    if (self.nameTextField.text.length < 2) {
        return NO;
    }

    if (self.addressTextField.text.length < 2) {
        return NO;
    }

    if (self.styleTextField.text.length < 2) {
        return NO;
    }

    return YES;
}

- (NSInteger)roundedIntegerNotationValue {
    return (NSInteger) roundf(self.notationSlider.value);
}

// Lazy instanciation de directory
- (Directory *)directory {
    if (!_directory) {
        _directory = [[Directory alloc] init];
    }
    return  _directory;
}
@end
