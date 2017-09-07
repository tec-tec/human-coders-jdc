//
//  ListViewController.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 06/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "ListViewController.h"
#import "Directory.h"
#import "FormViewController.h"

@interface ListViewController () <UITableViewDataSource>

@property (strong, nonatomic) Directory *directory;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSNotificationCenter *notCenter = [NSNotificationCenter defaultCenter];

    [notCenter addObserver:self selector:@selector(dataUpdated) name:@"ModelUpdated" object:self.directory];
}

- (void)dataUpdated {
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSAssert(tableView != nil, @"Table view should be nil");

    return [[self.directory listRestaurants] count];


}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"restoCell" forIndexPath:indexPath];

    Restaurant *currentResto = self.directory.listRestaurants[indexPath.row];
    cell.textLabel.text = currentResto.name;
    cell.detailTextLabel.text = currentResto.address;

    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    //Ne pas faire passer de valeurs à des outlets !!! Jamais jamais
    
    if ([[segue identifier] isEqualToString:@"showDetails"]) {
        NSLog(@"Segue details");

    } else if ([[segue identifier] isEqualToString:@"showForm"]) {
        FormViewController *vc = segue.destinationViewController;
        vc.directory = self.directory;
    }

}


- (Directory *)directory {
    if (!_directory) {
        _directory = [[Directory alloc] init];
        [_directory addRestaurant:[Restaurant mcDonalds]];
        [_directory addRestaurant:[Restaurant mcDonalds]];
        [_directory addRestaurant:[Restaurant mcDonalds]];
    }
    return _directory;
}
@end
