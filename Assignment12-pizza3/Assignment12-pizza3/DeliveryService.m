//
//  DeliveryService.m
//  Assignment12-pizza3
//
//  Created by ayako_sayama on 2017-05-04.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (void)deliverPizza:(Pizza *)pizza{
    
    DeliveryCar *car = [[DeliveryCar alloc]init];
    [car deliverPizza:pizza];
    
    [self deliveryList:pizza];
    
}

- (void)deliveryList: (Pizza*)pizza{
    [_deliveryList addObject:pizza];
    
    NSLog(@"Delievered Pizza List: %@",_deliveryList);
    //もしくは
    NSLog(@"%@",[self description]);
}

- (NSString*)description{
    
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger count = 1;
    for (Pizza *pi in _deliveryList) {
        [str appendFormat:@"Pizza delieverd: \n Pizza %ld [%@]\n",(long)count,pi];
//        NSLog(@"Pizza delieverd: \n Pizza %ld [%@]\n",(long)count,pi);
        count++;
    }
    
    return str;
}


@end
