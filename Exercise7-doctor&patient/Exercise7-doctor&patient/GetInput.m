//
//  GetInput.m
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "GetInput.h"

@implementation GetInput

+ (NSString*)getUserInput{
    
    char input[255];
    fgets(input, 255, stdin);
    NSString *convert = [NSString stringWithCString:input encoding:NSASCIIStringEncoding];
    return [convert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}



@end
