//
//  Doctor.h
//  HW3
//
//  Created by Герман Яренко on 22.12.23.
//

#import <Foundation/Foundation.h>

// Объявление протокола делегата
@protocol DoctorDelegate

-(void)doctorPrescribedMedication; // Метод, который будет вызван у пациента @end
@interface Doctor : NSObject

@property (nonatomic, weak) id delegate; // Ссылка на объект пациента

-(void)prescribeMedication; // Метод, который вызывает доктор для назначения пациенту лекарства
@end
