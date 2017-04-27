//
//  ContactList.h
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contactAry;


-(void) addContact:(Contact *) contact;
- (void)searchName:(NSString*) name;
- (NSInteger)findDuplicate:(NSString*) name;
- (void)listALL;

@end
