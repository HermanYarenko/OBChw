//
//  Doctor.m
//  HW3
//
//  Created by Герман Яренко on 22.12.23.
//

#import "Doctor.h"


@implementation Doctor

-(void)prescribeMedication { // Проверяем, что делегат существует и реализует нужный метод
    if (self.delegate && [self.delegate respondsToSelector:@selector(doctorPrescribedMedication)]) {
        // Назначаем лекарство пациенту
        [self.delegate doctorPrescribedMedication]; } }
@end
