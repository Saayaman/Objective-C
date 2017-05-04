#import "Pizza.h"


@implementation Pizza


- (instancetype)initWithSize: (PizzaSize) size initWithtopping: (NSArray*)toppings
{
    self = [super init];
    if (self) {
        
        _size = size;
        _toppings = toppings;
        
        NSLog(@"%@",[self description]);
    }
    return self;
    
}

- (NSString *)description{
    
    NSMutableString *str = [[NSMutableString alloc]init];
    NSString *pizasize  = GetPizzaSizeText(self.size);

    [str appendFormat:@"Pizasize: %@, ", pizasize];
    
    for (NSString *topping in _toppings) {
        [str appendFormat:@"Toppings: %@, ",topping];
    }
    
    
    
    return str;
}



@end
