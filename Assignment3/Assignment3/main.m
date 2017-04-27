

#import <Foundation/Foundation.h>
#import "InputHandling.h"
#import "AdditionQuestion.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int score = 0;
        bool boo = true;
        
        while(boo){
            
            //1: generate a random addition question
            AdditionQuestion *a = [[AdditionQuestion alloc] init];
            NSLog(@"\n%@", a.question);

            //3: To parse the user's inputted answer and convert it to a primitive NSInteger
            NSInteger convertB = [[InputHandling getUserInput] intValue];

            
            //4: The app will log "Right!" for correct and "Wrong!" for incorrect answers
            if (convertB == a.answer) {
                NSLog(@"Right!");
                score++;
            } else {
                NSLog(@"Wrong!");
            }
            
            //7: To add a scoring function to the game
            NSLog(@"The score is %d!\n",score);
            
            //6: To add the ability to exit the game
            NSLog(@"Do you want to play again?[Yes/No]: ");

            NSString* nospacestring = [InputHandling getUserInput];
            
            if([nospacestring caseInsensitiveCompare:@"no"] == NSOrderedSame){
                boo = false;
            }

        }
        
    }
    return 0;
}


