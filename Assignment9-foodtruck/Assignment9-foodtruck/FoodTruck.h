//
//  FoodTruck.h
//  Assignment9-foodtruck
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodTruck;

@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end


@interface FoodTruck : NSObject

@property (nonatomic, weak) id<FoodTruckDelegate> delegate;
@property (nonatomic,readonly, strong) NSString *foodType;


-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType;

-(void)serve:(int)orders;
-(void)cashOut;


@end
