
#import "Player.h"
#import "SnakeLadder.h"


@implementation Player


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSqure = 0;
        _gameOver = false;
    }
    return self;
}

- (void)rolldie:(SnakeLadder*)snakeLadder{
    
    NSInteger diceNum = arc4random_uniform(6)+1;
    NSLog(@"DiceNum is: %ld",(long)diceNum);
    _currentSqure = _currentSqure + diceNum;
    
    NSLog(@"Currentsqure is : %ld",(long)_currentSqure);
    
    //return the changed integer if there is trap

    NSNumber *myNum = [NSNumber numberWithInteger:_currentSqure];
    
    if ([snakeLadder checkforTrap:myNum] == true) {

        _currentSqure = [snakeLadder move:myNum];
        NSLog(@"There was a snake or ladder! at this square! Move from %@ to %ld", myNum,(long)_currentSqure);
    };
    
    
    if (_currentSqure > 100) {
        _gameOver = true;
    }
   
  
}

@end
