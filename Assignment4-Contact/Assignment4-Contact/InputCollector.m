//
//  InputCollector.m
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

NSString * promptString;

//- (instancetype)init
//{
//}

-(NSString *)inputForPrompt:(NSString *)promptString{
    
//    char input[255];
//    fgets(input, 255, stdin);
//    NSString *string = [NSString stringWithCString:input encoding:1];
//    self.promptString = [string stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
//    return promptString;

    
    NSString *converted = [promptString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return converted;
    
}


@end
