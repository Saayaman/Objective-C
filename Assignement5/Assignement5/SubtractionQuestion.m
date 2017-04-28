//
//  SubtractionQuestion.m
//  Assignement5
//
//  Created by ayako_sayama on 2017-04-27.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init{
    self = [super init];
    if (self) {
        [self generateQuesions];
    }
    
    return self;
    
}

- (void)generateQuesions{
    
    super.answer = super.leftValue - super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld - %ld ?", super.leftValue, (long)super.rightValue];
}

@end
