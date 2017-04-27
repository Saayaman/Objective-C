
#import <Foundation/Foundation.h>
#import "InputHandling.h"
#import <QuartzCore/QuartzCore.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int score = 0;
        bool boo = true;
        int count = 1;
        int total_time = 0;
        int average_time = 0;
        
        while(boo){
            
            //1: generate a random addition question
            
            CFTimeInterval startTime = CACurrentMediaTime();

            
            //2. To prompt the user to input their answer
            NSLog(@"Write your answer: ");
            
            //3: To parse the user's inputted answer and convert it to a primitive NSInteger
            NSInteger convertB = [[InputHandling getUserInput] intValue];
            
            
            //4: The app will log "Right!" for correct and "Wrong!" for incorrect answers
            
            if (cpanswer == convertB) {
                NSLog(@"Right!");
                score++;
            } else {
                NSLog(@"Wrong!");
            }
            
            CFTimeInterval elapsedTime = CACurrentMediaTime() - startTime;
            NSLog(@"The time it took was: %.0f secs", elapsedTime);
            
            total_time = total_time+elapsedTime;
            average_time = (total_time /count);
            
            NSLog(@"The total time: %d",total_time);
            NSLog(@"The average time: %d", average_time);
            
            //7: To add a scoring function to the game
            NSLog(@"The score is %d!\n",score);
            
            count++;
            
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
