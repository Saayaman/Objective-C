//
//  ContactList.m
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init{

    self = [super init];
    if(self){
        
        _contactAry = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void) addContact:(Contact *) contact {
    [_contactAry addObject:contact];
}

@end
