//
//  PatientList.m
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "PatientList.h"


@implementation PatientList

- (instancetype)init{
    self = [super init];
    if (self) {
        _patientList = [NSMutableArray array];
    }

    return self;
}


- (void)addPatient:(Patient*)patient{
    [_patientList addObject:patient];
}

- (NSString*)description{
    NSMutableString* str = [[NSMutableString alloc]initWithString:@"Patient Lists: \n"];
    
    for (Patient* patient in _patientList) {
        [str appendFormat:@"%@, %ld, %x, %@\n",patient.name,(long)patient.age,patient.hasHealthCard,patient.symptoms];
    }
    return str;
}


@end
