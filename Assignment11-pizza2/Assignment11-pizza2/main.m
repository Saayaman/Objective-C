
#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "GetInput.h"
#import "KitchenDelegator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        Kitchen *restaurantKitchen = [Kitchen new];
        KitchenDelegator *delegator = [[KitchenDelegator alloc]init];
        delegator.kitchenDelegate = restaurantKitchen;
        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            
            NSString* inputString = [GetInput getUserInput];
            NSLog(@"Input was %@", inputString);
            
            // Take the first word = size, and the rest = toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            
            [restaurantKitchen processOrder:commandWords withKitchen:restaurantKitchen];
            
            
            
            NSLog(@"Make Again?[yes/no]");
            NSString* again = [GetInput getUserInput];
            
            if ([again isEqualToString:@"no"]) {
                break;
            }
        }
        
    }
    return 0;
}
