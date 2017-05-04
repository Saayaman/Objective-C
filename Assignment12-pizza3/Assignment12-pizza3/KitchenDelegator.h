
#import <Foundation/Foundation.h>
//#import "Kitchen.h"

@class Pizza;
@class Kitchen;



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

//typedef NS_ENUM(NSInteger, PizzaSize){
//    small = 1,
//    medium,
//    large
//};

@protocol KitchenDelegate <NSObject>


- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaofSize: (PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenshouldUpgradeOrder:(PizzaSize) size;
@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end


@interface KitchenDelegator : NSObject

@property (nonatomic,weak) id<KitchenDelegate> kitchenDelegate;

@end
