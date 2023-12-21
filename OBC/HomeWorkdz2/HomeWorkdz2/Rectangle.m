//
//  Rectangle.m
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype)initWithName:(NSString *)name width:(float)width height:(float)height {
    self = [super initWithName:name];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}

- (float)area {
    return self.width * self.height;
}

- (float)perimeter {
    return 2 * (self.width + self.height);
}
@end 
