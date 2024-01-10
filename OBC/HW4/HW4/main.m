//
//  main.m
//  HW4
//
//  Created by Герман Яренко on 9.01.24.
//

#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (void)run:(NSString *(^)(void))block;

@end

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(NSString *(^)(void))block {
    NSString *direction = block();
    
    if ([direction isEqualToString:@"up"]) {
        self.y += 1;
    } else if ([direction isEqualToString:@"down"]) {
        self.y -= 1;
    } else if ([direction isEqualToString:@"left"]) {
        self.x -= 1;
    } else if ([direction isEqualToString:@"right"]) {
        self.x += 1;
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:^NSString *{
            return @"right";
        }];
        
        [robot run:^NSString *{
            return @"up";
        }];
        
        [robot run:^NSString *{
            return @"up";
        }];
        
        [robot run:^NSString *{
            return @"up";
        }];
        
        [robot run:^NSString *{
            return @"left";
        }];
        
        [robot run:^NSString *{
            return @"down";
        }];
        
        NSLog(@"Robot's coordinates: (%ld, %ld)", (long)robot.x, (long)robot.y);
    }
    return 0;
}

