//
//  InputHandling.m
//  Assignment3
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "InputHandling.h"

@implementation InputHandling

//classのinstanceを返す
+ (NSString *) getUserInput {
    char answer[255];
    fgets(answer, 255, stdin);
    NSString *convertA = [NSString stringWithCString:answer encoding:NSASCIIStringEncoding];
    
    return [convertA stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}





@end
