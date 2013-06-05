//
//  TWProduct.h
//  RetailStore
//
//  Created by Rohini Kulkarni on 03/06/13.
//  Copyright (c) 2013 Rohini Kulkarni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TWProduct : NSObject
@property(nonatomic,strong) NSString  *category;
@property(nonatomic,strong) NSString  *productName;
@property(nonatomic,strong) NSNumber  *price;
@property(nonatomic,strong) NSString  *description;

@end
