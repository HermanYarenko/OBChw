//
//  main.m
//  HomeWorkdz2
//
//  Created by Герман Яренко on 21.12.23.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) float area;

@end

@implementation Shape

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 5; // Количество фигур
        
        // Создаем массив фигур
        NSMutableArray *shapesArray = [[NSMutableArray alloc] init];
        
        // Добавляем n-фигур в массив
        for (int i = 0; i < n; i++) {
            Shape *shape = [[Shape alloc] init];
            shape.name = [NSString stringWithFormat:@"Фигура %d", i];
            shape.area = i * 10.0; // Пример площади фигуры
            [shapesArray addObject:shape];
        }
        
        // Выводим информацию о фигурах на экран
        for (Shape *shape in shapesArray) {
            NSLog(@"Название: %@", shape.name);
            NSLog(@"Площадь: %f", shape.area);
            NSLog(@"---------------------");
        }
    }
    return 0;
}
