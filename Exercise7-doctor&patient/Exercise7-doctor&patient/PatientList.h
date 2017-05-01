//
//  PatientList.h
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

@interface PatientList : NSObject

@property NSMutableArray *patientList;

- (void)addPatient:(Patient*)patient;

@end
