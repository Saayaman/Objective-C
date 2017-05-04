#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"
#import "Manager.h"

@implementation Kitchen


- (void)processOrder:(NSArray*)order withKitchen:(Kitchen *)kitchen withManager:(Manager*)manager{
    
    NSMutableArray* topping = [NSMutableArray array];
    PizzaSize size;

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
    
    BOOL canMake = [manager kitchen:kitchen shouldMakePizzaofSize:size andToppings:topping];
    if (canMake == true) {
        
        BOOL isUpgraded = [manager kitchenshouldUpgradeOrder:size];
        if (isUpgraded == true) {
            
            Pizza *pizza = [self makePizzaWithSize:size toppings:topping];
            if ([manager respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                    [manager kitchenDidMakePizza:pizza];
            }
        }
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
