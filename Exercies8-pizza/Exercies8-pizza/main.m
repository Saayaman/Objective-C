//
//  main.m
//  Exercies8-pizza
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "GetInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");

            NSString* inputString = [GetInput getUserInput];
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            [restaurantKitchen proccessOrder:commandWords];
            
            NSLog(@"Make Again?[yes/no]");
            NSString* again = [GetInput getUserInput];

            if ([again isEqualToString:@"no"]) {
                break;
            }
        }
        
    }
    return 0;
}
