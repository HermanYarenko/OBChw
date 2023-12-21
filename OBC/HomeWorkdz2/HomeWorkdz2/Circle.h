//
//  Circle.h
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Shape.h"

@interface Circle : Shape

@property (nonatomic) float radius;

- (instancetype)initWithName:(NSString *)name radius:(float)radius;

@end
