//
//  TWTableViewCell.m
//  RetailStore
//
//  Created by Rohini Kulkarni on 04/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import "TWTableViewCell.h"

@implementation TWTableViewCell
@synthesize product;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
