//
//  main.m
//  HomeWork3Delegate
//
//  Created by Герман Яренко on 23.12.23.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor takePils];
    }
    return 0;
}
