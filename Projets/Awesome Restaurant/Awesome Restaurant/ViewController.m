//
//  ViewController.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 04/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "ViewController.h"
#import "Directory.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *styleTextField;
@property (weak, nonatomic) IBOutlet UISlider *notationSlider;
@property (weak, nonatomic) IBOutlet UISwitch *visitedSwitch;
@property (weak, nonatomic) IBOutlet UILabel *notationLabel;

- (IBAction)visitedSwitchValueChanged:(UISwitch *)sender;
- (IBAction)notationSliderValueChanged:(UISlider *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

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

    self.notationLabel.text = @(roundf(sender.value)).stringValue;
}
@end
