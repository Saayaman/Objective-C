//
//  main.m
//  Assignment6
//
//  Created by ayako_sayama on 2017-04-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GetInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *dice1 = [[Dice alloc]init];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
       
        NSMutableArray *holds = [[NSMutableArray alloc] init];
        
        while(true){

            NSLog(@"Choose an Action: [roll,] \n");
            NSString *input = [GetInput getUserInput];
            
            if ([input isEqualToString:@"roll"]) {
                
                NSLog(@"1: ");
                [dice1 setScore:[Dice randomDice]];
                NSLog(@"2: ");
                [dice2 setScore:[Dice randomDice]];
                NSLog(@"3: ");
                [dice3 setScore:[Dice randomDice]];
                NSLog(@"4: ");
                [dice4 setScore:[Dice randomDice]];
                NSLog(@"5: ");
                [dice5 setScore:[Dice randomDice]];
//                NSMutableArray *dices = @[dice1,dice2,dice3,dice4,dice5];
                NSLog(@"Enter Dice# for hold or Enter [stop]");
                
            }
            
            //store all dices:
        
            //hold dices
            NSLog(@"Enter Dice# for hold or Enter [stop]");
            NSString *hold;
            hold = [GetInput getUserInput];
            
            while ([hold isNotEqualTo:@"stop"]) {
                
                if ([hold isEqualToString:@"1"]) {
                    [holds addObject:dice1];
                } else if([hold isEqualToString:@"2"]){
                    [holds addObject:dice2];
                } else if([hold isEqualToString:@"3"]){
                    [holds addObject:dice3];
                } else if([hold isEqualToString:@"4"]){
                    [holds addObject:dice4];
                } else if([hold isEqualToString:@"5"]){
                    [holds addObject:dice5];
                }
                
                hold = [GetInput getUserInput];
            }

            NSLog(@"The Holds Dice: %@",holds);
            
            
        }
        
    }
    return 0;
}

int generateQ(void){
    float num1 = arc4random_uniform(100)/(float)100;
    float num2 = arc4random() % 100/(float)100;
    
    NSLog(@"What is the answer of %.2f + %.2f??",num1,num2);
    int newanswer = num1+num2;
    return newanswer;
}
