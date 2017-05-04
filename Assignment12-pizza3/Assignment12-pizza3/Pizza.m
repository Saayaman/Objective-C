#import "Pizza.h"


@implementation Pizza


- (instancetype)initWithSize: (PizzaSize) size initWithtopping: (NSArray*)toppings
{
    self = [super init];
    if (self) {
        NSString *pizasize = GetPizzaSizeText(size);
        NSLog(@"Pizza is made![ size:  %@, toppings: %@\n",pizasize,toppings);
    }
    return self;
    
}




@end
