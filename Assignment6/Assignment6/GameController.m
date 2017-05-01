//
//  GameController.m
//  Assignment6
//
//  Created by ayako_sayama on 2017-04-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#import "GetInput.h"

@implementation GameController


- (instancetype)init{
    

    self = [super init];
    if (self) {
        
        _collection = [NSMutableArray array];
        _holdie = [NSMutableArray array];
        [self initiaLizeDice];
    }
    
    return self;
}

-(void)initiaLizeDice{
    for (int z = 0; z < 5; z++) {
        Dice *dice = [[Dice alloc]init];
        [_collection addObject:dice];
    }
}

- (void)addDice:(Dice*) dice{
    [_holdie addObject:dice];
}

- (void) roll{
    for (Dice *dice in _collection) {
        
        dice.hold = false;
        [dice randomDice];
        NSLog(@"%ld",(long)dice.score);
    }
    [self printDiceandScore];
}

- (void) holdDice: (Dice*)dice{
    dice.hold = !dice.hold;
}

- (BOOL) holdinArray: (NSString*) diceNum{

    BOOL stop = false;
    
    if ([diceNum isEqualToString:@"1"]) {
        [self holdDice:self.collection[0]];
    } else if([diceNum isEqualToString:@"2"]){
        [self holdDice:_collection[1]];
    } else if([diceNum isEqualToString:@"3"]){
        [self holdDice:_collection[2]];
    } else if([diceNum isEqualToString:@"4"]){
        [self holdDice:_collection[3]];
    } else if([diceNum isEqualToString:@"5"]){
        [self holdDice:_collection[4]];
    } else if([diceNum isEqualToString:@"stop"]){
        stop = true;
    } else{
        NSLog(@"Wrong Input!");
    }
    
    return stop;
}

- (void)printDiceandScore{
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"Dice: "];
    for (Dice *dice in _collection) {
        [str appendFormat:@"%@",[dice description]];
    }
    NSLog(@"%@",str);
}


- (void)printHeldDice{
    NSMutableString *str2 = [[NSMutableString alloc] initWithString:@"Holds: "];
    for (Dice *dice2 in _holdie) {
        [str2 appendFormat:@"%@, ",[dice2 description]];
    }
    NSLog(@"%@",str2);
}

- (void)resetDice{
    [_holdie removeAllObjects];
    [self initiaLizeDice];
    
}

- (void)getScore{
    
    NSInteger score = 0;
    for (Dice* dice in _holdie) {
        score += dice.score;
    }
    
    NSLog(@"Score: %ld", (long)score);
}


- (void)printALL{

    [self printHeldDice];
//    [self printDiceandScore];
    [self getScore];
}

@end
