//
//  Patient.h
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-04-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
#import "GetInput.h"

@interface Patient : NSObject

@property NSString *name;
@property NSInteger age;
@property BOOL hasHealthCard;
@property NSMutableArray *symptoms;

- (instancetype)init;
//- (instancetype)initWithName: (NSString*)name initWithAge: (NSInteger)age;

- (void)visitDoctor;

@end
