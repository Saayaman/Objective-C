

#import <Foundation/Foundation.h>

@class Pizza;
#import "KitchenDelegator.h"
@class DeliveryService;




@interface Kitchen : NSObject<KitchenDelegate>

@property DeliveryService *deliveryService;

- (void)processOrder:(NSArray*)order withKitchen:(Kitchen *)kitchen;


@end
