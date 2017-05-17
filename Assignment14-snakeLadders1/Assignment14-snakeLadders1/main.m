//
//  main.m
//  Assignment14-snakeLadders1
//
//  Created by ayako_sayama on 2017-05-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "snake&Ladder.h"
#import "SnakeLadder.h"
#import "Dice.h"
#import "GetInput.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SnakeLadder *snakeLadder = [[SnakeLadder alloc]init];
        Player *player1 = [[Player alloc]init];

        while (true) {
            
            NSLog(@"enter <roll> or <r>, or <exit>");
            NSString *action = [GetInput getInput];
            
            if ([action isEqualToString:@"roll"] || [action isEqualToString:@"r"]) {
                [player1 rolldie:snakeLadder];
            } else{
                NSLog(@"You escaped from the game!");
                break;
            }
            
            if (player1.gameOver == true) {
                NSLog(@"Game is finished!");
                break;
            }
            
        }
        

    }
    return 0;
                                            
}
