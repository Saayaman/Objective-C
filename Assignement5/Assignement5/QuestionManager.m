//
//  QuestionManager.m
//  Assignement5
//
//  Created by ayako_sayama on 2017-04-27.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"


@implementation QuestionManager

- (instancetype)init{
    self = [super init];
    if(self){
        
        _questions = [NSMutableArray array];
    }
    return self;
}


- (void) addQuestion:(Question *) question{
    [_questions addObject:question];
}

- (NSString*) timeOutput{
    
    Question *first = [_questions objectAtIndex:0];
    Question *last = [_questions objectAtIndex:_questions.count - 1];
    NSTimeInterval diff = [last.endTime timeIntervalSinceDate:first.startTime];
    
    
    NSString* str = [NSString stringWithFormat: @"Total Time: %ds,  Average time: %lus?", (int) diff, (int) diff / _questions.count];
    
    return str;
}


@end
