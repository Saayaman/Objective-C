//
//  Patient.m
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-04-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init{
    self = [super init];
    if(self){
        _symptoms = [[NSMutableArray alloc] init];
    }
    return self;
}



- (void)visitDoctor{
    NSLog(@"Patient: (visits doctor.)");
}

- (NSString*)description{
    NSMutableString *patientInfo = [[NSMutableString alloc] initWithString:@"PatientInfo{ "];
    [patientInfo appendFormat:@"Name: %@, Age: %ld, HasHealthcard: %x", _name, (long)_age, false];
    return patientInfo;
}

@end
