//
//  BikeDetailViewController.m
//  MotorolaCodingChallenge
//
//  Created by Sam Bender on 2/7/16.
//  Copyright © 2016 Sam Bender. All rights reserved.
//

#import "BikeDetailViewController.h"
#import "Bike.h"

@interface BikeDetailViewController ()

@end

@implementation BikeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.bikeImageView setImage:[UIImage imageNamed:@"bike"]];
    [self.brandLabel setText:self.bike.brand];
    [self.modelLabel setText:self.bike.model];
    [self.priceLabel setText:[NSString stringWithFormat:@"$%lu.00", self.bike.price]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
