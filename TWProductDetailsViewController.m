//
//  TWProductDetailsViewController.m
//  RetailStore
//
//  Created by Rohini Kulkarni on 04/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import "TWProductDetailsViewController.h"

@interface TWProductDetailsViewController ()

@end

@implementation TWProductDetailsViewController
@synthesize product;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  self.productName.text = product.productName;
  self.price.text = [product.price stringValue];
  self.description.text = product.description;
  
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
