

#import <Foundation/Foundation.h>

@class Pizza;
#import "KitchenDelegator.h"
@class DeliveryService;
@class Manager;



@interface Kitchen : NSObject

@property Manager *manager;

//- (void)processOrder:(NSArray*)order withKitchen:(Kitchen *)kitchen;

- (void)processOrder:(NSArray*)order withKitchen:(Kitchen *)kitchen withManager:(Manager*)manager;
@end
