
#import <Foundation/Foundation.h>
#import "snake&Ladder.h"
#import "SnakeLadder.h"
#import "Dice.h"
#import "GetInput.h"
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SnakeLadder *snakeLadder = [[SnakeLadder alloc]init];        
        PlayerManager *manager = [[PlayerManager alloc]init];
        

        while (true) {
            NSLog(@"How many players?");
            NSString *playerNum = [GetInput getInput];
            NSInteger nm = [playerNum integerValue];
            
            if (nm == 0) {
                NSLog(@"There are no players!");
            } else{
                [manager createPlayers:nm];
                break;
            }
        }

        
        int round = 1;
        
        while (true) {
        
            NSLog(@"Round:%i",round);
            
            for(Player *player in manager.players){

                
                NSLog(@"%@: enter <roll> or <r>, or <exit>",player.name);
                NSString *action = [GetInput getInput];
                
                if ([action isEqualToString:@"roll"] || [action isEqualToString:@"r"]) {
                    [player rolldie:snakeLadder];
                } else{
                    NSLog(@"You escaped from the game!");
                    exit(0);
                }
                
                if (player.gameOver == true) {
                    NSLog(@"Game is finished!");
                    exit(0);
                }
                
                NSLog(@"%@ current box is %ld",player.name,(long)player.currentSqure);

            }
            
            
            round++;
        }
        
        
    }
    return 0;
    
}
