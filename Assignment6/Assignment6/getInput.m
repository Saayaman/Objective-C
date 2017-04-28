//
//  GetInput.m
//  Assignment6
//
//  Created by ayako_sayama on 2017-04-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "GetInput.h"

@implementation GetInput

+ (NSString *) getUserInput {
    char answer[255];
    fgets(answer, 255, stdin);
    NSString *convertA = [NSString stringWithCString:answer encoding:NSASCIIStringEncoding];
    return [convertA stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
