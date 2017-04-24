//
//  main.m
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *menu = @"What would you like to do next?\nnew - Create a new contact \nlist - List all contacts\nquit - Exit Application ";
        InputCollector *input = [[InputCollector alloc]init];
        
        Contact *contact;
        ContactList *contactlist = [ContactList new];
        
        
        while (true) {
            NSString *uInput = [input inputForPrompt:menu];
//            NSLog(@"%@", uInput);
            
            if ([uInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu mon ami");
                break;
            } else if([uInput isEqualToString:@"new"]) {
                NSString *name = [input inputForPrompt:@"What is your name?"];
                NSString *email = [input inputForPrompt:@"What is your Email?"];
                
                // init
                contact = [[Contact alloc]initWithName:name WithEmail:email];
                NSLog(@"%@", contact);
                
                [contactlist addContact:contact];
                NSLog(@"%@", contactlist);

            } else if([uInput isEqualToString:@"list"]){
                
                for(int i = 0; i < contactlist.contactAry.count; i++){
                    NSLog(@"%@", contactlist.contactAry[i]);
                }
                
            } else {
                NSLog(@"Wrong input!");
            }
            
        }
        
    }
    return 0;
}
