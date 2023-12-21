//
//  Figure.m
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Figure.h"
@implementation Figure

- (instancetype)initWithName:(NSString *)name andSideLength:(float)sideLength {
    self = [super init];
    if (self) {
        _name = name;
        _sideLength = sideLength;
    }
    return self;
}

- (float)area {
    return self.sideLength * self.sideLength;
}

- (float)perimeter {
    return 4 * self.sideLength;
}

- (void)printInformation {
    NSLog(@"Фигура: %@", self.name);
    NSLog(@"Сторона: %.2f", self.sideLength);
    NSLog(@"Площадь: %.2f", [self area]);
    NSLog(@"Периметр: %.2f", [self perimeter]);
}

@end
