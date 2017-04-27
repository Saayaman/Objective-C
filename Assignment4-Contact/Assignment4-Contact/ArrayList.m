//
//  ArrayList.m
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "ArrayList.h"
#import "Contact.h"

@implementation ArrayList


+ (NSMutableArray*) ArraywithContact: Contact contactlist {
    
    NSMutableArray *array;
    
    int i;
    for(i = 0; i < contactlist.contactAry.count; i++){
        NSMutableArray *array= contactlist.contactAry[i];
    }
    
    return array;


}


@end
