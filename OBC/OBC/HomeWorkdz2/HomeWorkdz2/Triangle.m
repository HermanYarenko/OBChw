//
//  Triangle.m
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Triangle.h"

@implementation Triangle

- (instancetype)initWithName:(NSString *)name side1:(float)side1 side2:(float)side2 side3:(float)side3 {
    self = [super initWithName:name];
    if (self) {
        _side1 = side1;
        _side2 = side2;
        _side3 = side3;
    }
    return self;
}

- (float)area {
    // Расчет площади треугольника по формуле Герона
    float s = (self.side1 + self.side2 + self.side3) / 2;
    return sqrtf(s * (s - self.side1) * (s - self.side2) * (s - self.side3));
}

- (float)perimeter {
    return self.side1 + self.side2 + self.side3;
}

@end
