//
//  Manager.m
//  Assignment12-pizza3
//
//  Created by ayako_sayama on 2017-05-04.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Manager.h"
#import "DeliveryService.h"

@implementation Manager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryService = [[DeliveryService alloc]init];
        
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaofSize: (PizzaSize)size andToppings:(NSArray *)toppings{
    
    BOOL canMakePiza = true;
    
    if ((size != 0) && (toppings.count > 0)) {
        NSLog(@"We can make pizza!");
        
    } else{
        NSLog(@"Sorry, we don't have that piza.");
        canMakePiza = false;
    }
    return canMakePiza;
}



- (BOOL)kitchenshouldUpgradeOrder:(PizzaSize)size{
    return true;
}


- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Pizza Made! Ready for Delivery");
    [_deliveryService deliverPizza:pizza];
}

@end
