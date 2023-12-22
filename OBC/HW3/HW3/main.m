//
//  main.m
//  HW3
//
//  Created by Герман Яренко on 22.12.23.
//

#import <Foundation/Foundation.h>

// Объявление делегата
@protocol PatientDelegate <NSObject>

- (void)takeMedicine;

@end

// Класс Doctor
@interface Doctor : NSObject

@property (nonatomic, weak) id<PatientDelegate> delegate;

- (void)prescribeMedicineToPatient;

@end

@implementation Doctor

- (void)prescribeMedicineToPatient {
    // Делегат выполняет метод takeMedicine
    [self.delegate takeMedicine];
}

@end

// Класс Patient
@interface Patient : NSObject <PatientDelegate>

- (void)takeMedicine;

@end

@implementation Patient

- (void)takeMedicine {
    NSLog(@"Пациент выпивает лекарство");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] init];
        
        // Назначаем делегата 
        doctor.delegate = patient;
        
        // Доктор делегирует пациенту выпить лекарство
        [doctor prescribeMedicineToPatient];
    }
    return 0;
}

