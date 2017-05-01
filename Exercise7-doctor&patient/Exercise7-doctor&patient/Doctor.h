//
//  Doctor.h
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-04-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GetInput.h"
#import "Prescription.h"
#import "PrescriptionList.h"
@class Patient;

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;

//- (void)askforheathcard;

- (void)getPatientInfo:(Patient*) patient;
- (void)askforheathcard: (Patient *) patient;
- (void)requestMedication:(Patient *) patient;
- (void)prescribeMed:(Patient *)patient;

@end
