//
//  Doctor.m
//  HomeWork3Delegate
//
//  Created by Герман Яренко on 23.12.23.
//

#import "Doctor.h"

@implementation Doctor

-(void)takePils {
    NSLog(@"Doctor take pils");
    [self.delegate takePils];
}

@end
