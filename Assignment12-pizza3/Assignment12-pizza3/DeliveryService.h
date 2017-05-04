//
//  DeliveryService.h
//  Assignment12-pizza3
//
//  Created by ayako_sayama on 2017-05-04.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject


- (void)deliverPizza:(Pizza *)pizza;

@property NSMutableArray *deliveryList;

@end
