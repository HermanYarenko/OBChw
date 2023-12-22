//
//  Figure.h
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import <Foundation/Foundation.h>


@interface Figure : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) float sideLength; // Допустим, мы рассматриваем фигуру с одинаковыми сторонами

- (instancetype)initWithName:(NSString *)name andSideLength:(float)sideLength;

- (float)area;
- (float)perimeter;
- (void)printInformation;

@end
