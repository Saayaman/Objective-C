//
//  Cook.m
//  Assignment9-foodtruck
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Cook.h"


@implementation Cook


- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    
    double price;
    
    if ([food isEqualToString:@"bao"]) {
        price = 100;
    }
    else{
        price = 200;
    }
    return price;

}

@end
