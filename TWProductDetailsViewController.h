//
//  TWProductDetailsViewController.h
//  RetailStore
//
//  Created by Rohini Kulkarni on 04/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWProduct.h"

@interface TWProductDetailsViewController : UIViewController

@property(nonatomic,strong) TWProduct *product;
@property(nonatomic, strong) IBOutlet UILabel *productName;
@property(nonatomic, strong) IBOutlet UILabel *price;
@property(nonatomic, strong) IBOutlet UILabel *description;

@end
