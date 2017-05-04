//
//  Pizza.h
//  Assignment11-pizza2
//
//  Created by ayako_sayama on 2017-05-03.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"


@interface Pizza : NSObject

@property (readonly, nonatomic) PizzaSize size;
@property (readonly, nonatomic) NSArray* toppings;


- (instancetype)initWithSize: (PizzaSize) size initWithtopping: (NSArray*)toppings;
@end
