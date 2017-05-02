//
//  Kitchen.h
//  Exercies8-pizza
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize){
    small = 1,
    medium,
    large
};

typedef NS_ENUM(NSInteger,Topping){
    ham = 1,
    cheese,
    pinapple
};

#define GetPizzaSizeText(type) PizzaSizeTextList[type]

// 文字列からHogeTyoeを取得
#define GetPizzaSize(typeText) (PizzaSize)[PizzaSizeTextList indexOfObject:typeText]

// HogeTyoeの文字列リスト
#define PizzaSizeTextList @[@"small",@"medium",@"large"]
#define PizzaToppingList @[@"ham",@"cheese",@"pineapple"]



@class Pizza;


@interface Kitchen : NSObject

- (void)proccessOrder: (NSArray*) order;
//- (BOOL*)hasPizzasize:(NSString*)yum;
- (BOOL)hasPizzasize:(NSString*)yum;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;


@end
