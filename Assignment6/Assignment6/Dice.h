//
//  Dice.h
//  Assignment6
//
//  Created by ayako_sayama on 2017-04-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSInteger score;


- (instancetype)initWithScore:(NSInteger)score;
+ (int)randomDice;
//+ (NSString*) randomDice;

@end
