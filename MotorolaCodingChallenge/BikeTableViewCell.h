//
//  BikeTableViewCell.h
//  MotorolaCodingChallenge
//
//  Created by Sam Bender on 2/7/16.
//  Copyright © 2016 Sam Bender. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BikeTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *brandLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *bikeImageView;

@end
