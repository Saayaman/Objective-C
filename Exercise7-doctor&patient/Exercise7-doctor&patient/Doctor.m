//
//  Doctor.m
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-04-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)init: (NSString*)name initWithSpeciality: (NSString*) speciality{
    self = [super init];
    if(self){
        _name = name;
        _specialization = speciality;
    }
    return self;
}


- (void)getPatientInfo:(Patient*) patient{
    
    NSLog(@"Patient Name?");
    NSString *name = [GetInput getUserInput];
    [patient setName:name];
    
    NSLog(@"Age?");
    NSString *age = [GetInput getUserInput];
    NSInteger age2 = [age integerValue];
    [patient setAge:age2];
    
}


- (void)askforheathcard: (Patient*)patient{
    NSLog(@"Doctor: Do you have a health card?[yes/no]\n");
    NSString *input = [GetInput getUserInput];
    if ([input isEqualToString:@"yes"]) {
        [patient setHasHealthCard:true];
        NSLog(@"Patient is accepted");

    } else{
        [patient setHasHealthCard:false];
        NSLog(@"Sorry, you need a health card!");
        exit(0);
    }

}

- (void)requestMedication:(Patient*)patient{
    
    while (true) {
        NSLog(@"Doctor: What are your symptoms? headache, fever, stomachache, insomnia, fin");
        NSString *input = [GetInput getUserInput];
        
        if ([input isEqualToString:@"5"]||[input isEqualToString:@"fin"]) {
            break;
        }
        
        [patient.symptoms addObject:input];
    }
    
}

- (void)prescribeMed:(Patient*)patient{
    
    PrescriptionList *prescriptionList = [[PrescriptionList alloc]init];
    
    for (NSString* symptom in patient.symptoms) {
        Prescription* prescription = [[Prescription alloc]init];
        [prescription setCure:symptom];
        
        NSString *medName = [self chooseMed:prescription];
        [prescription setName:medName];
        
        [prescriptionList addPrescriptions:prescription];
    }

    NSLog(@"Prescribed Meds{ %@ }",[prescriptionList description]);

}


- (NSString*)chooseMed:(Prescription*)prescription{
    
    NSString *medName = [[NSString alloc]init];
    if ([prescription.cure isEqualToString:@"headache"]) {
        medName = @"tylenol";
    } else if ([prescription.cure isEqualToString:@"fever"]) {
        medName = @"ibuprofen";
    }else if ([prescription.cure isEqualToString:@"stomachache"]) {
        medName = @"aspirin";
    }else if ([prescription.cure isEqualToString:@"insomnia"]) {
        medName = @"punch in the face";
    } else{
        NSLog(@"There are no cures!!\n");
    }
    
    return medName;
}


- (NSString*)description{
    NSMutableString *doctorInfo = [[NSMutableString alloc] initWithString:@"DoctorInfo{ "];
    [doctorInfo appendFormat:@"Name: %@, Speciality: %@", _name, _specialization];
    return doctorInfo;
}


@end
