

#import <Foundation/Foundation.h>

@class Pizza;
#import "KitchenDelegator.h"





@interface Kitchen : NSObject<KitchenDelegate>

- (void)processOrder:(NSArray*)order withKitchen:(Kitchen *)kitchen;


@end
