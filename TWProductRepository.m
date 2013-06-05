//
//  TWProductRepository.m
//  RetailStore
//
//  Created by Rohini Kulkarni on 05/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import "TWProductRepository.h"
#import "TWCategory.h"
#import "TWProduct.h"

@implementation TWProductRepository
@synthesize categories;

-(id) init {
  categories = [[NSMutableArray alloc] initWithCapacity:2];
  TWCategory *electronics = [[TWCategory alloc] init];
  electronics.categoryName = @"Electonics";
  electronics.products = [[NSMutableArray alloc]initWithCapacity:4];
  
  TWProduct *product1 = [self createProduct:@"Fridge" category:@"Electronics" price:20000 description:@"abc"];
  [electronics.products addObject:product1];
  
  TWProduct *product2 = [self createProduct:@"TV" category:@"Electronics" price:20000 description:@"abc"];
  [electronics.products addObject:product2];
  
  TWProduct *product3 = [self createProduct:@"Mobile" category:@"Electronics" price:20000 description:@"abc"];
  [electronics.products addObject:product3];
  
  TWProduct *product4 = [self createProduct:@"Washing Machine" category:@"Electronics" price:20000 description:@"abc"];
  [electronics.products addObject:product4];
  
  [categories addObject:electronics];
  
  TWCategory *furniture = [[TWCategory alloc] init];
  furniture.categoryName = @"Furniture";
  furniture.products = [[NSMutableArray alloc]initWithCapacity:4];
  
  TWProduct *product5 = [self createProduct:@"Bed" category:@"Furniture" price:20000 description:@"abc"];
  [furniture.products addObject:product5];
  
  TWProduct *product6 = [self createProduct:@"Chair" category:@"Furniture" price:20000 description:@"abc"];
  [furniture.products addObject:product6];
  
  TWProduct *product7 = [self createProduct:@"Table" category:@"Furniture" price:20000 description:@"abc"];
  [furniture.products addObject:product7];
  
  
  [categories addObject:furniture];
  return self;
}

- (TWProduct*) createProduct: (NSString*) name category:(NSString*)category price:(int)price description:(NSString*)description{
  TWProduct *product = [[TWProduct alloc] init];
  product.productName = name;
  product.price= [NSNumber numberWithInt:price];
  product.category= category;
  product.description =description;
  return product;
}
@end
