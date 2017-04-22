//
//  main.m
//  subClass
//
//  Created by ayako_sayama on 2017-04-20.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        //Subclass
        
        
        //Category
        
        
        //Inheritance
        
        //Interface
        

        //NSMutable: object whose contents can be edited—that conceptually represents an array of Unicode characters
        //There is NSMutableCharacterSet, NSMutableString, NSMutableArray
        unichar eezyUnichar1 = [@"a!1" characterAtIndex:0];
        unichar eezyUnichar2 = [@"a!1" characterAtIndex:1];
        NSMutableCharacterSet *characterSet =[[NSMutableCharacterSet alloc]init];
        [characterSet addCharactersInRange:NSMakeRange(21, 14)];
        NSLog(@"%d",[characterSet characterIsMember:eezyUnichar1]);
        NSLog(@"%d",[characterSet characterIsMember:eezyUnichar2]);
        
        unichar eezyUnichar3 = [@"!!1" characterAtIndex:0];
        unichar eezyUnichar4 = [@"a@1" characterAtIndex:1];
        NSMutableCharacterSet *characterSet2 =[[NSMutableCharacterSet alloc]init];
        [characterSet2 addCharactersInString:@"!@#$%^&*()_+"];
        [characterSet2 formIntersectionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
        NSLog(@"%d",[characterSet characterIsMember:eezyUnichar3]);
        NSLog(@"%d",[characterSet characterIsMember:eezyUnichar4]);
        
        
        //NSCharacterSet and taking out whitespace and new line
        NSString *mySentence = @"This is a test\n";
        NSArray* words = [mySentence componentsSeparatedByCharactersInSet :[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString* nospacestring = [words componentsJoinedByString:@""];
        NSLog(@"%@",nospacestring);

    }
    return 0;
}
