//
//  Pizza.m
//  Exercies8-pizza
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Pizza.h"


@implementation Pizza


- (instancetype)initWithSize: (PizzaSize) size initWithtopping: (NSArray*)toppings
{
    self = [super init];
    if (self) {
        NSString *pizasize = GetPizzaSizeText(size);
        NSLog(@"Pizza is made![ size:  %@, toppings: %@\n",pizasize,toppings);
    }
    return self;
    
}



@end
