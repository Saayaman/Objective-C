//
//  main.m
//  Assignment3
//
//  Created by ayako_sayama on 2017-04-20.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
int generateQ(void);

#import "InputHandling.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int score = 0;
        bool boo = true;
        
        while(boo){
            
            //1: generate a random addition question
            int cpanswer = generateQ();
            
            //2. To prompt the user to input their answer
            NSLog(@"Write your answer: ");

            InputHandling *inputHandle = [[InputHandling alloc]init];
            
            //3: To parse the user's inputted answer and convert it to a primitive NSInteger
            NSInteger convertB = [inputHandle.converted intValue];

            
            //4: The app will log "Right!" for correct and "Wrong!" for incorrect answers
        
            
            if (cpanswer == convertB) {
                NSLog(@"Right!");
                score++;
            } else {
                NSLog(@"Wrong!");
            }
            
            //7: To add a scoring function to the game
            NSLog(@"The score is %d!\n",score);
            
            //6: To add the ability to exit the game
            NSLog(@"Do you want to play again?[Yes/No]: ");
            
            char YorN[10];
            fgets(YorN, 10, stdin);
            NSString *convertC = [NSString stringWithCString:YorN encoding:NSASCIIStringEncoding];

            //Using Characterset No whitespace to strip newilne and space
            NSArray* words = [convertC componentsSeparatedByCharactersInSet :[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString* nospacestring = [words componentsJoinedByString:@""];

            if([nospacestring caseInsensitiveCompare:@"no"] == NSOrderedSame){
                boo = false;
            }
//          同じ
//            if([nospacestring  isEqual: @"no"]){
//                boo = false;
//            }
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

