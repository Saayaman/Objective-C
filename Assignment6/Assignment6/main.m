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
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        GameController *controller = [[GameController alloc]init];
        NSInteger rollCount = 5;
        
        while(true){

            NSLog(@"Choose an Action: [roll(%ld),reset,] \n", (long)rollCount);
            
            if (rollCount == 0) {
                
                [controller getScore];
                break;
            }
            
            NSString *input = [GetInput getUserInput];
            if ([input isEqualToString:@"roll"]) {
                rollCount--;
                [controller roll];
                
                
                
                NSLog(@"Enter Dice# for hold or Enter [stop]");
                BOOL stop = false;
                do{
                    NSString *diceNum = [GetInput getUserInput];
                    stop = [controller holdinArray:diceNum];
                    
                }while(!stop);
                
                NSInteger count = 0;
                for (Dice *dice in controller.collection) {
                    if (dice.hold == true) {
                        [controller.holdie addObject: dice];
//                        [controller.collection removeObject:dice];
                        count++;
                    }
                }
                
                for (int z = 0; z < count; z++) {
                    
                    NSLog(@"Removed index: %lu",controller.collection.count-1);
                    [controller.collection removeObject:controller.collection[controller.collection.count-1]];
                    
                }
                
                //Print: held dices!
                [controller printALL];
            
                
            } else if([input isEqualToString:@"reset"]){
                [controller resetDice];
                rollCount = 5;
            }



        }
        
    }
    return 0;
}
