//
//  Shape.m
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Shape.h"

@implementation Shape

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (float)area {
    // Расчет площади фигуры
    return 0;
}

- (float)perimeter {
    // Расчет периметра фигуры
    return 0;
}
@end
