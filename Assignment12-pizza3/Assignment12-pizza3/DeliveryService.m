//
//  DeliveryService.m
//  Assignment12-pizza3
//
//  Created by ayako_sayama on 2017-05-04.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryList = [NSMutableArray array];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza{
    
    DeliveryCar *car = [[DeliveryCar alloc]init];
    [car deliverPizza:pizza];
    
    
    [_deliveryList addObject:pizza];
    
    //もしくは
    NSLog(@"Delivered Pizza: ");
    [self description];
    
}

- (NSString*)description{
    
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger count = 1;
    for (Pizza *pi in _deliveryList) {
        NSLog(@"Piza Num%ld =, %@",(long)count, [pi description]);
        count++;
    }
    
    return str;
}


@end
