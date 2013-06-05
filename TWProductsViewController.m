//
//  TWProductsViewController.m
//  RetailStore
//
//  Created by Rohini Kulkarni on 03/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import "TWProductsViewController.h"
#import "TWProduct.h"
#import "TWCategory.h"
#import "TWTableViewCell.h"
#import "TWProductDetailsViewController.h"
#import "TWProductRepository.h"

@interface TWProductsViewController ()
{
  NSMutableArray *categories;
}
@end

@implementation TWProductsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
  
  categories = [[TWProductRepository alloc] init].categories;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return categories.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

  TWCategory *category = [categories objectAtIndex:section];
  return category.products.count;
}

- (TWTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  TWTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
  if(cell == nil)
  {
    cell = [[TWTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
  }
  TWCategory *category = [categories objectAtIndex:indexPath.section];
  TWProduct *product = [category.products objectAtIndex:indexPath.row];
  cell.product = product;
  cell.textLabel.text = product.productName;
  return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
  TWCategory *category = [categories objectAtIndex:section];
  return category.categoryName;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
  TWTableViewCell *cell = sender;
  TWProductDetailsViewController *detailsView = segue.destinationViewController;
  detailsView.product = cell.product;
}

@end
