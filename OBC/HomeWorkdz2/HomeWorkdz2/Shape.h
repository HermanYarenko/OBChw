//
//  Shape.h
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Shape : NSObject

@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (float)area;
- (float)perimeter;

@end

NS_ASSUME_NONNULL_END
