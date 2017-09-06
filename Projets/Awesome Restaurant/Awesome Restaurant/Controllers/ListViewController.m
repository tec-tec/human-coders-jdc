//
//  ListViewController.m
//  Awesome Restaurant
//
//  Created by Ludovic Ollagnier on 06/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

#import "ListViewController.h"
#import "Directory.h"

@interface ListViewController () <UITableViewDataSource>

@property (strong, nonatomic) Directory *directory;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.directory listRestaurants] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"restoCell" forIndexPath:indexPath];

    Restaurant *currentResto = self.directory.listRestaurants[indexPath.row];
    cell.textLabel.text = currentResto.name;
    cell.detailTextLabel.text = currentResto.address;

    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
