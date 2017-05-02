//
//  GetInput.m
//  Exercies8-pizza
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "GetInput.h"

@implementation GetInput

+ (NSString*)getUserInput{
    char str[100];
    fgets (str, 100, stdin);

    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return inputString;
    
    }
@end
