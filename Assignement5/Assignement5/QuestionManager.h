//
//  QuestionManager.h
//  Assignement5
//
//  Created by ayako_sayama on 2017-04-27.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;
- (void) addQuestion:(Question *) question;
- (NSString*) timeOutput;
@end
