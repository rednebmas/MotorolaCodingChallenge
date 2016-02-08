//
//  BikeDetailViewController.h
//  MotorolaCodingChallenge
//
//  Created by Sam Bender on 2/7/16.
//  Copyright © 2016 Sam Bender. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Bike;

@interface BikeDetailViewController : UIViewController

@property (nonatomic, retain) Bike *bike;
@property (weak, nonatomic) IBOutlet UIImageView *bikeImageView;
@property (weak, nonatomic) IBOutlet UILabel *brandLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;



@end
