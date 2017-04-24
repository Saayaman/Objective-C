//
//  AdditionQuestion.m
//  Assignement5
//
//  Created by ayako_sayama on 2017-04-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

NSDate * startTime;
NSDate * endTime;

- (instancetype)initWithStart: (NSDate*) startTime WithEnd: (NSDate*) endTime{
    self = [super init];
    if(self){
        _startTime = startTime;
        _endTime = endTime;
    }
    
    return self;
}

@end
