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
        
 
        NSLog(@"What would you like to do next?\nnew - Create a new contact \nlist - List all contacts\n quit - Exit Application ");
        
        Contact *contact;
        ContactList *contactlist = [ContactList new];
        
        
        while (true) {
            
            NSLog(@"Your next action?: ");
            
            char menuinput[255];
            fgets(menuinput, 255, stdin);
            
            InputCollector *input = [[InputCollector alloc]init];
            
            NSString *convertC = [NSString stringWithCString:menuinput encoding:1];
            NSString *input1 = [input inputForPrompt:convertC];
            
            NSLog(@"%@", input1);
        
        if ([input1 isEqualToString:@"quit"]) {
            NSLog(@"Adieu mon ami");
            break;
        } else if([input1 isEqualToString:@"new"]) {
            
            NSLog(@"What is your name?");
            fgets(menuinput, 255, stdin);
            NSString *convertName = [NSString stringWithCString:menuinput encoding:1];
            NSString *name = [input inputForPrompt:convertName];
            
            NSLog(@"What is your Email?");
            fgets(menuinput, 255, stdin);
            NSString *convertEmail = [NSString stringWithCString:menuinput encoding:1];
            NSString *email = [input inputForPrompt:convertEmail];
            
            // init
            contact = [[Contact alloc]initWithName:name WithEmail:email];
            NSLog(@"%@", contact);
            
            //[contact addcontact(contact)]
            
            [contactlist addContact:contact];
            NSLog(@"%@", contactlist);

        } else if([input1 isEqualToString:@"list"]){
            
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
