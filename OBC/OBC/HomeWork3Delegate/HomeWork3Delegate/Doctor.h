//
//  Doctor.h
//  HomeWork3Delegate
//
//  Created by Герман Яренко on 23.12.23.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
#import "Patient.h"
NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;
- (void) takePils;

@end

NS_ASSUME_NONNULL_END
