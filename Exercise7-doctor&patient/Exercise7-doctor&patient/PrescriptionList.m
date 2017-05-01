//
//  PrescriptionList.m
//  Exercise7-doctor&patient
//
//  Created by ayako_sayama on 2017-05-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

#import "PrescriptionList.h"

@implementation PrescriptionList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _presscriptionList = [NSMutableArray array];
    }
    return self;
}

- (void)addPrescriptions:(Prescription*)prescription{
    
//    for (Prescription* prescription in _presscriptionList) {
        [_presscriptionList addObject:prescription];
//    }
}

- (NSString*)description{
    NSMutableString* str = [[NSMutableString alloc]initWithString:@"Med Names: "];
    
    for (Prescription *prescription in _presscriptionList) {
        [str appendFormat:@"%@: for %@\n",prescription.name,prescription.cure];
    }
    return str;
}

@end
