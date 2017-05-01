
#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "PatientList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PatientList *patientlist = [[PatientList alloc]init];
        
        while (true) {
        
            Doctor *doctor = [[Doctor alloc]init];
            [doctor setName:@"John Travolta"];
            [doctor setSpecialization: @"Internal medicine"];
            NSLog(@"%@", [doctor description]);
        
        
            Patient *patient = [[Patient alloc]init];
            
            [patient visitDoctor];
            [doctor getPatientInfo:patient];
            [doctor askforheathcard:patient];
        
            NSLog(@"%@", [patient description]);
            
            [patientlist addPatient:patient];
            [doctor requestMedication:patient];
            [doctor prescribeMed:patient];
            
            NSLog(@"Current Patient Lists: %@",[patientlist description]);
            
            //Clean encapsulation of a problem makes your classes modular. That means they can be easily swapped out for other classes that solve the same problem in a different way. Your coffee maker doesn't care what type of container is placed under it, as long as it meets the requirements (i.e. large enough to hold all the coffee, and short enough to fit under the spout).

            NSLog(@"Another Patient?\n");
            NSString *input = [GetInput getUserInput];
            if ([input isEqualToString:@"no"]) {
                break;
            }

        }
    }
    return 0;
}
