//
//  AdditionQuestion.m
//  Assignement5
//
//  Created by ayako_sayama on 2017-04-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init{
    self = [super init];
    if(self){
        NSInteger n1 = arc4random_uniform(90)+11;
        NSInteger n2 = arc4random_uniform(90)+11;
        _answer = n1+n2;
        _question = [NSString stringWithFormat:@"%ld + %ld",n1,n2];
    }
    
    return self;
}

@end
