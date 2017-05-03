#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen


- (void)processOrder:(NSArray*)order withKitchen:(Kitchen *)kitchen{
    
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
    
    BOOL canMake = [self kitchen:kitchen shouldMakePizzaofSize:size andToppings:topping];
    if (canMake == true) {
        
        BOOL isUpgraded = [self kitchenshouldUpgradeOrder:size];
        if (isUpgraded == true) {
            
            Pizza *pizza = [self makePizzaWithSize:size toppings:topping];
            if ([self respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                    [self kitchenDidMakePizza:pizza];
            }
        }
    }
    

}

- (BOOL)kitchenshouldUpgradeOrder:(PizzaSize)size{
  
    return true;
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



- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Kitchen did make Pizza!");
}


@end
