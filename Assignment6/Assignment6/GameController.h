//
//  GameController.h
//  Assignment6
//
//  Created by ayako_sayama on 2017-04-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"


@interface GameController : NSObject

@property NSMutableArray* holdie;
@property NSMutableArray* collection;


- (void) roll;
- (void)addDice:(Dice*) dice;

- (void) holdDice: (Dice*)dice;
- (BOOL) holdinArray: (NSString*) diceNum;

- (void)printDiceandScore;
- (void)printHeldDice;
- (void)resetDice;
- (void)getScore;
- (void)printALL;

@end
