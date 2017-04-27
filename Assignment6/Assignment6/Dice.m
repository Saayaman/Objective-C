
#import "Dice.h"


@implementation Dice

int dice;

- (instancetype)initWithScore:(NSInteger)score
{
    self = [super init];
    if(self){
        self.score = score;
    }
    return self;
}

+ (int) randomDice{
    dice = arc4random_uniform(6)+1;
//    NSString *diceAscii;
//    NSString *string = [NSString stringWithFormat:@"%ld", (long)dice];
    return dice;
    

}

- (NSString *)description{
    
    
    NSString *diceAscii;
    
    if (dice == 1) {
        diceAscii = @"\u2680";
        //        NSLog(@"\u2680");
    } else if(dice == 2){
        diceAscii = @"\u2681";
        //        NSLog(@"\u2681");
    } else if( dice == 3){
        diceAscii = @"\u2682";
        //        NSLog(@"\u2682");
    } else if(dice == 4){
        diceAscii = @"\u2683";
        //        NSLog(@"\u2683");
    } else if(dice == 5){
        diceAscii = @"\u2684";
        //        NSLog(@"\u2684");
    } else if(dice == 6){
        diceAscii = @"\u2685";
        //        NSLog(@"\u2685");
    } else{
        NSLog(@"Error! Dice num is: %ld",(long)dice);
    }
    
//    NSString *str = [NSString stringWithFormat:@"Ascii Dice: %@, %@", diceAscii,_score];
    
//    NSLog(@"This is inside description: %@",str);
    return diceAscii;
}



@end
