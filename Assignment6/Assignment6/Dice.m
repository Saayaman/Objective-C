
#import "Dice.h"


@implementation Dice




- (instancetype)initWithScore:(NSInteger)score
{
    self = [super init];
    if(self){
        self.score = score;
        _hold = false;
        
    }
    return self;
}

- (NSInteger) randomDice{
    _score = arc4random_uniform(6)+1;
    return _score;
}

- (NSString *)description{
    
    NSString *diceAscii;
    
    if (_score == 1) {
        diceAscii = @"\u2680";
    } else if(_score == 2){
        diceAscii = @"\u2681";
    } else if(_score == 3){
        diceAscii = @"\u2682";
    } else if(_score == 4){
        diceAscii = @"\u2683";
    } else if(_score == 5){
        diceAscii = @"\u2684";
    } else if(_score == 6){
        diceAscii = @"\u2685";
    } else{
        NSLog(@"Error! Dice num is: %ld",_score);
    }
    
    return diceAscii;
}



@end
