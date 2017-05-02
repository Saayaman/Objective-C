//
//  Kitchen.m
//  Exercies8-pizza
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen


- (void)proccessOrder: (NSArray*) order{
    
    PizzaSize size = 0;
    
    NSMutableArray* topping = [NSMutableArray array];

    
    for (NSString* yum in order) {
        BOOL hasSize = [self hasPizzasize:yum];
        if (hasSize) {
            size = GetPizzaSize(yum)+1;
        }
        
        BOOL hasTopping = [self hasToppings:yum];
        if (hasTopping) {
            [topping addObject:yum];
        }
        
    }
    
    
    if ((size != 0) && (topping.count > 0)) {

        NSLog(@"We made pizza!");
        [self makePizzaWithSize:size toppings:topping];
        
    } else{
        NSLog(@"Sorry, we don't have that piza.");
        exit(0);
    }

}

- (BOOL)hasPizzasize:(NSString*)yum{
    
    BOOL hassize = false;
    for (NSString* size in PizzaSizeTextList){
        if ([size isEqualToString: yum]) {
            hassize = true;
            break;
        }
    }
    return hassize;
}


- (BOOL)hasToppings:(NSString*)yum{
    BOOL hasTopping = false;
    for (NSString* size in PizzaToppingList){
        if ([size isEqualToString: yum]) {
            hasTopping = true;
        }
    }
    return hasTopping;
}


- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
 {
     Pizza* pizza = [[Pizza alloc]initWithSize:size initWithtopping:toppings];
     return pizza;
 }

@end
