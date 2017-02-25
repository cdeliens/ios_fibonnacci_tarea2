//
//  FibonacciTableViewCell.m
//  Fibonacci Tarea 2
//
//  Created by Christian Deliens on 2/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "FibonacciTableViewCell.h"

@interface FibonacciTableViewCell()
@property (strong, nonatomic) IBOutlet UILabel *numberLabel;

@end

@implementation FibonacciTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void) setupCellWithNumber:(NSString *) number
{
    self.numberLabel.text = number;
}
@end
