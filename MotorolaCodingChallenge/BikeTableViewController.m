//
//  BikeTableViewController.m
//  MotorolaCodingChallenge
//
//  Created by Sam Bender on 2/7/16.
//  Copyright © 2016 Sam Bender. All rights reserved.
//

#import "BikeTableViewController.h"
#import "BikeDetailViewController.h"
#import "BikeTableViewCell.h"
#import "Bike.h"

@interface BikeTableViewController ()

// array of bike objects
@property (nonatomic, retain) NSArray *bikes;

@end

@implementation BikeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Bike *one = [[Bike alloc] init];
    one.model = @"SuperFast";
    one.brand = @"Motorola";
    one.price = 100;
    
    Bike *two = [[Bike alloc] init];
    two.model = @"CRAZYFast";
    two.brand = @"Motorola";
    two.price = 1000;
    
    Bike *three = [[Bike alloc] init];
    three.model = @"CRAZYFastXXX";
    three.brand = @"Motorola";
    three.price = 500000;
    
    self.bikes = @[ one, two, three ];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.bikes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BikeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BikeCell" forIndexPath:indexPath];
    Bike *bike = self.bikes[indexPath.row];
    
    // Configure the cell...
    [cell.modelLabel setText:bike.model];
    [cell.brandLabel setText:bike.brand];
    [cell.priceLabel setText:[NSString stringWithFormat:@"$%lu.00", bike.price]];
    [cell.bikeImageView setImage:[UIImage imageNamed:@"bike"]];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    BikeDetailViewController *vc = [segue destinationViewController];
    Bike *bike = [self.bikes objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    vc.bike = bike;
}

@end
