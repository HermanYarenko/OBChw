//
//  Triangle.h
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Shape.h"

@interface Triangle : Shape

@property (nonatomic) float side1;
@property (nonatomic) float side2;
@property (nonatomic) float side3;

- (instancetype)initWithName:(NSString *)name side1:(float)side1 side2:(float)side2 side3:(float)side3;

@end
