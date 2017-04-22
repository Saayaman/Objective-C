//
//  InputCollector.h
//  Assignment4-Contact
//
//  Created by ayako_sayama on 2017-04-21.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSString * promptString;
-(NSString *)inputForPrompt:(NSString *)promptString;


@end
