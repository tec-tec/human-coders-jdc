//
//  ViewController.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "FormViewController.h"
#import "Directory.h"
#import "UIColor+ChartedColors.h"
#import "ListViewController.h"

@interface FormViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *styleTextField;
@property (weak, nonatomic) IBOutlet UISlider *notationSlider;
@property (weak, nonatomic) IBOutlet UISwitch *visitedSwitch;
@property (weak, nonatomic) IBOutlet UILabel *notationLabel;

- (IBAction)visitedSwitchValueChanged:(UISwitch *)sender;
- (IBAction)notationSliderValueChanged:(UISlider *)sender;
- (IBAction)save:(id)sender;

@end

@implementation FormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self variousExamples];
    
    if (self.bgColor) {
        self.view.backgroundColor = self.bgColor;
    }

    // Pour vérifier que le "delegate" implémente bienb la méthode
    if ([[self previousScreen] respondsToSelector:@selector(formDisplayed)]) {
        [self.previousScreen formDisplayed];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)variousExamples {


    NSFileManager *fm = [NSFileManager defaultManager];

    NSURL *documentFolderUrl = [[fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    documentFolderUrl = [documentFolderUrl URLByAppendingPathComponent:@"photo" isDirectory:YES];
    documentFolderUrl = [documentFolderUrl URLByAppendingPathComponent:@"maPhoto"];
    documentFolderUrl = [documentFolderUrl URLByAppendingPathExtension:@"jpg"];

    NSLog(@"%@", documentFolderUrl);

    NSData * data = [NSData new];
    [data writeToURL:documentFolderUrl atomically:YES];

    NSData * readData = [[NSData alloc] initWithContentsOfURL:documentFolderUrl];





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

    [self dismissViewControllerAnimated:YES completion:nil];
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
