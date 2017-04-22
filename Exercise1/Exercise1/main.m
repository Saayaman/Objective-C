//
//  main.m
//  Exercise1
//
//  Created by ayako_sayama on 2017-04-18.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

void lastCharResponse(NSString* U){
    NSString *response1 = @"I don't know";
    NSString *response2 = @"Whoa, calm down!";
    if ([U  isEqual: @"?"]) {
        NSLog(@"%@\n", response1);
    } else {
        NSLog(@"%@\n", response2);
    }
}

int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        // 255 unit long array of characters
        
        printf("Input a string: \n");
        
        // limit input to max 255 characters
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        
        // prints uppercas and lowercase
        NSString *inputString2 = [[NSString stringWithUTF8String:inputChars] uppercaseString];
        NSLog(@"uppercase is: %@", inputString2);
        
        NSString *inputString3 = [[NSString stringWithUTF8String:inputChars]lowercaseString];
        NSLog(@"uppercase is: %@", inputString3);
        
        //Numformat1: takes a char input, change it to string format
        char numString[10];
        NSLog(@"Write a number in string format: \n");
        fgets(numString, 10, stdin);
        //fgets only takes char array!! use scanf if you want input NSString
        NSString *converted = [NSString stringWithFormat:@"%s", numString];
        NSInteger b = [converted integerValue];
        NSLog(@"The number is: %ld", (long)b);
        
        
        //Numformat2: another way, takes string
        NSString *inputString6= @"75";
        int value = [inputString6 intValue];
        NSLog(@"The number is: %i", value);

        //Numformat3: another way, using numberformatter
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        NSNumber *inputString7 = [f numberFromString:  converted];
        NSLog(@"The number is: %@", inputString7);

        //Canadianize
        NSString *foo = @"Food is great";
        NSString *bar = @"Bar";
        NSString *eh = @", eh?";
        
        NSString *foobar = [foo stringByAppendingString:eh];
        NSString *baz = [bar stringByReplacingOccurrencesOfString:@"r" withString:@"z"];
        NSLog(@"Canadianize: %@", foobar);
        NSLog(@"Canadianize: %@", baz);

        //Respond
        NSLog(@"Write a sentence with ! or ? in the end: \n");
        char myline[100];
//        scanf("%s\n",myline);
        fgets(myline, sizeof myline, stdin);
        NSString *toString = [NSString stringWithFormat:@"%s", myline];
        NSLog(@"This is the string: %lu\n", (unsigned long)toString.length);

        NSString *lastChar = [toString substringFromIndex:[toString length] - 2];
//        NSLog(@"This is the length: %@\n", [toString substringFromIndex:[toString length]]);


//        unichar lastChar = [toString characterAtIndex:[toString length] - 1];

        NSLog(@"The last char: %@\n", lastChar);
        


//        lastCharResponse(lastChar);
        
//        NSLog(@"Write a sentence with ! or ? in the end: \n");
//        char myline2[100];
//        fgets(myline2, 100, stdin);
//        NSLog(@"%s\n", myline2);
//        NSString *toString2 = [NSString stringWithFormat:@"%s\n", myline2];
//        NSString *lastChar2 = [toString2 substringFromIndex:[toString2 length] - 1];
//
//        lastCharResponse(lastChar2);
//        
    }
    return 0;
}



