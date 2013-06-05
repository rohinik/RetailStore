//
//  TWTableViewCell.h
//  RetailStore
//
//  Created by Rohini Kulkarni on 04/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWProduct.h"

@interface TWTableViewCell : UITableViewCell

@property(nonatomic,strong) TWProduct* product;
@end
