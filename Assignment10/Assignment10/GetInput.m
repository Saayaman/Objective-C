//
//  GetInput.m
//  Assignment10
//
//  Created by ayako_sayama on 2017-05-02.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "GetInput.h"

@implementation GetInput

+ (NSInteger)getInput{
    
    char input[0];
    fgets(input, 100, stdin);
    
    NSString *convert = [[NSString alloc]initWithUTF8String:input];
    convert = [convert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    NSInteger convertB = [convert integerValue];
    
    return convertB;
}



@end
