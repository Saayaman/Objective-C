
#import <Foundation/Foundation.h>
#import "InputHandling.h"
#import "Question.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QuestionManager *manager = [[QuestionManager alloc]init];
        int scoreR = 0;
        int scoreW = 0;
        bool boo = true;

        while(boo){

            Question *addQ = [[Question alloc]init];
            NSLog(@"%@",addQ.question);
            [manager addQuestion: addQ];
            
            //parse answer and convert it to a primitive NSInteger
            NSInteger convertB = [[InputHandling getUserInput] intValue];
            
            if (addQ.answer == convertB) {
                NSLog(@"Right!");
                scoreR++;
            } else {
                NSLog(@"Wrong!");
                scoreW++;
            }
            
            NSLog(@"Answers correct: %d, Answers Wrong: %d",scoreR,scoreW);
            
            //
            NSTimeInterval totalTime = [addQ answerTime:addQ.startTime withEnd:addQ.endTime];
            NSLog(@"Time: %f secs",totalTime);
            NSLog(@"%@",[manager timeOutput]);
            
            
            //Exit the game
            NSLog(@"Do you want to play again?[Yes/No]: ");
            
            NSString* nospacestring = [InputHandling getUserInput];
            
            if([nospacestring caseInsensitiveCompare:@"no"] == NSOrderedSame){
                boo = false;
            }
            
        }
        
    }
    return 0;
}
