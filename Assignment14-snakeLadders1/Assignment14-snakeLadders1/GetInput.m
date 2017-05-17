//
//  GetInput.m
//  Assignment14-snakeLadders1
//
//  Created by ayako_sayama on 2017-05-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "GetInput.h"

@implementation GetInput

+ (NSString*)getInput{
    
//    char input[100];
//    fgets(input,100,stdin);
////    NSString *convert = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
//    NSString *convert = [NSString stringWithUTF8String:input];
//    return convert;
    
    
    char answer[255];
    fgets(answer, 255, stdin);
    NSString *convertA = [NSString stringWithCString:answer encoding:NSASCIIStringEncoding];
    return [convertA stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
