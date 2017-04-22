//
//  InputHandling.m
//  Assignment3
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "InputHandling.h"
NSString *converted;


@implementation InputHandling

//classのinstanceを返す
- (instancetype)init{
    self = [super init];
    if(self){
        char answer[255];
        fgets(answer, 255, stdin);
        NSString *convertA = [NSString stringWithCString:answer encoding:NSASCIIStringEncoding];
//        NSInteger convertB = [convertA integerValue];
        self.converted = [convertA stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return self;
}

@end
