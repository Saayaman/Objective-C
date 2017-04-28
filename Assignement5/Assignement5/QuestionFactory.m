//
//  QuestionFactory.m
//  Assignement5
//
//  Created by ayako_sayama on 2017-04-27.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"

@implementation QuestionFactory

+ (Question*)generateRandomQuestion{
    
    Question *question;
    
    
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion"];
    int randomQ = arc4random_uniform(2);
    NSString *className = questionSubclassNames[randomQ];
    question =  [[NSClassFromString(className) alloc]init];


    
//    int randomQ = arc4random_uniform(2);
//    switch (randomQ) {
//        case 1:
//            question = [[SubtractionQuestion alloc]init];
//            break;
//        case 0:
//            question = [[SubtractionQuestion alloc]init];
//            break;
//    }
//    return question;
}

@end
