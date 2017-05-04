//
//  Manager.h
//  Assignment12-pizza3
//
//  Created by ayako_sayama on 2017-05-04.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "KitchenDelegator.h"
#import "Pizza.h"
@class DeliveryService;

@interface Manager : NSObject<KitchenDelegate>
@property DeliveryService *deliveryService;



@end
