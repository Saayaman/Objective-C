//
//  Contact.h
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property NSMutableDictionary *phone;

- (instancetype)initWithName: (NSString*) name WithEmail: (NSString*)email;


@end
