//
//  Chef.m
//  Assignment9-foodtruck
//
//  Created by ayako_sayama on 2017-05-02.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Chef.h"

@implementation Chef

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    
    double price;
    
    if ([food isEqualToString:@"bao"]) {
        price = 200;
    }
    else{
        price = 400;
    }
    return price;


}

@end
