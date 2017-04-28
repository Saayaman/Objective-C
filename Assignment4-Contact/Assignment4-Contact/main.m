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
//macro
#define NEW @"new"
#define LIST @"list"
#define FIND @"find"
#define HISTORY @"history"
#define QUIT @"quit"
#define SHOW @"show"




int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *menu = @"What would you like to do next?\nnew - Create a new contact \nlist - List all contacts\nquit - Exit Application\nshow - Show Contact with ID\nfind - Find name from list\nhistory - show past 3 actions";
        InputCollector *input = [[InputCollector alloc]init];
        Contact *contact;
        ContactList *contactlist = [ContactList new];
        NSMutableArray *history = [NSMutableArray array];
        NSString *action;
        int arrayCount =0;

        
        while (true) {
            
            
            NSString *uInput = [input inputForPrompt:menu];
            
            if ([uInput isEqualToString:QUIT]) {
                NSLog(@"Adieu mon ami");
                break;
            } else if([uInput isEqualToString:NEW]) {
                
                action = NEW;
                
                do {
                    NSString *name = [input inputForPrompt:@"What is your name?"];
                    NSString *email = [input inputForPrompt:@"What is your Email?"];
                    
                    // find a Duplicate
                    if ([contactlist findDuplicate:name]) {
                        NSLog(@"The Contact Name is already used. Try again");

                    } else {
                        //add to array
                        contact = [[Contact alloc]initWithName:name WithEmail:email];
                        [contactlist addContact:contact];
                        break;
                    }
                } while (true);
                
                
               do {
                    NSString *phoneType = [input inputForPrompt:@"What is the Phone Type?"];
                    NSString *phoneNum = [input inputForPrompt:@"PhoneNumber?"];
                    [[contact phone] setObject:phoneNum forKey:phoneType];
                    
                    NSString *moreNo = [input inputForPrompt:@"Another phone#?[yes/no]"];
                    if ([moreNo isEqualToString:@"no"]){
                        break;
                    }
               } while (true);
                
                [contactlist addContact:contact];
                
                

            } else if([uInput isEqualToString:LIST]){
                action = LIST;
                [contactlist listALL];

                
            } else if([uInput isEqualToString:SHOW]) {
                action = SHOW;
                NSString *ID = [input inputForPrompt:@"What is the Contact ID?"];
                NSInteger ID2  = [ID integerValue];
                
                
                //array外のものをアクセスしようとすると、エラーが起きる
                int i;
                for(i = 0; i < contactlist.contactAry.count; i++){
                    if(i == ID2){
                        NSLog(@"%@\n", contactlist.contactAry[i]);
                    }
                }
                
                if (i < ID2) {
                    NSLog(@"Not found\n");
                }
                
            } else if([uInput isEqualToString:FIND]){
                action = FIND;
                NSString *NAME = [input inputForPrompt:@"Find contact by Name?"];
                NSLog(@"%@The name printed\n",NAME);
                [contactlist searchName:NAME];
                
            } else if([uInput isEqualToString:HISTORY]){
                action = HISTORY;
                NSLog(@"This is the last 3 actions: %@",history);
                
            }
            
            else {
                NSLog(@"Wrong input!");
            }
            
            
            NSLog(@"Action = %@",action);
            
            if (arrayCount < 3){
                [history addObject:action];
                arrayCount++;
            } else{
                history[0] = history[1];
                history[1] = history[2];
                history[2] = action;
            }
            
        }
        
    }
    return 0;
    
}


