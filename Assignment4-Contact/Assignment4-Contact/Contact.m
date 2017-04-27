//
//  Contact.m
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//


#import "Contact.h"
#import "ContactList.h"

@implementation Contact


- (instancetype)initWithName: (NSString*) name WithEmail: (NSString*)email  {
    
    self = [super init];
    if(self){
        self.name = name;
        self.email = email;
        self.phone = [NSMutableDictionary dictionary];
    }
    
    return self;
}



- (NSString *)description {
 
    NSString *str = [NSString stringWithFormat:@"%@, %@, %@", [self name], [self email], [self phone]];
    
    NSLog(@"This is inside description: %@",str);
    return str;
}

@end
