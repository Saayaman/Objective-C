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

        NSString *menu = @"What would you like to do next?\nnew - Create a new contact \nlist - List all contacts\nquit - Exit Application\nshow - Show Contact with ID\nfind - Find name from list\nhistory - show past 3 actions";
        InputCollector *input = [[InputCollector alloc]init];
        Contact *contact;
        ContactList *contactlist = [ContactList new];
        NSMutableArray *history = [NSMutableArray array];
        NSString *action;
        int arrayCount =0;

        
        while (true) {
            
            
            NSString *uInput = [input inputForPrompt:menu];
            
            if ([uInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu mon ami");
                break;
            } else if([uInput isEqualToString:@"new"]) {
                
                action = @"new";
                
                NSInteger duplicate = 1;
                while (duplicate == 1) {
                    NSString *name = [input inputForPrompt:@"What is your name?"];
                    NSString *email = [input inputForPrompt:@"What is your Email?"];
                    
                    
                    // find a Duplicate
                    duplicate = [contactlist findDuplicate:name];
                    if (duplicate == 1) {
                        NSLog(@"The Contact Name is already used. Try again");
                    } else {
                        //add to array
                        contact = [[Contact alloc]initWithName:name WithEmail:email];
                        [contactlist addContact:contact];
                    }
                };
                
                NSInteger more = 1;
                while (more == 1) {
                    NSString *phoneType = [input inputForPrompt:@"What is the Phone Type?"];
                    NSString *phoneNum = [input inputForPrompt:@"PhoneNumber?"];
                    [[contact phone] setObject:phoneNum forKey:phoneType];
                    
                    NSString *moreNo = [input inputForPrompt:@"Another phone#?[yes/no]"];
                    if ([moreNo isEqualToString:@"no"]){
                        more = 0;
                    }
                }
                
                [contactlist addContact:contact];

            } else if([uInput isEqualToString:@"list"]){
                action = @"list";
                [contactlist listALL];

            
//                [contactlist.contactAry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        
//                    Contact * contact = (Contact*)obj;
//                    [contact description];
//                    
//                }
//                 ];
//                

                
            } else if([uInput isEqualToString:@"show"]) {
                action = @"show";
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
                
            } else if([uInput isEqualToString:@"find"]){
                action = @"find";
                NSString *NAME = [input inputForPrompt:@"Find contact by Name?"];
                NSLog(@"%@The name printed\n",NAME);
                [contactlist searchName:NAME];
                
            } else if([uInput isEqualToString:@"history"]){
                action = @"history";
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


