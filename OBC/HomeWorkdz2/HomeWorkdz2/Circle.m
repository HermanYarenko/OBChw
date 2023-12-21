//
//  Circle.m
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Circle.h"

@implementation Circle

- (instancetype)initWithName:(NSString *)name radius:(float)radius {
    self = [super initWithName:name];
    if (self) {
        _radius = radius;
    }
    return self;
}

- (float)area {
    return M_PI * powf(self.radius, 2);
}

- (float)perimeter {
    return 2 * M_PI * self.radius;
}

@end
