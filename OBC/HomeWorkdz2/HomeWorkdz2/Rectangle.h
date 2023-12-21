//
//  Rectangle.h
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Shape
@property (nonatomic) float width;
@property (nonatomic) float height;

- (instancetype)initWithName:(NSString *)name width:(float)width height:(float)height;


@end

NS_ASSUME_NONNULL_END
