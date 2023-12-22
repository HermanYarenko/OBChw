//
//  main.m
//  HomewWork
//
//  Created by Герман Яренко on 17.12.23.
//


// ZD1
#import <Foundation/Foundation.h>

void solveQuadraticEquation(float a, float b, float c) {
    float discriminant = b * b - 4 * a * c;
    
    if (discriminant > 0) {
        float x1 = (-b + sqrt(discriminant)) / (2 * a);
        float x2 = (-b - sqrt(discriminant)) / (2 * a);
        NSLog(@"x1 = %f, x2 = %f", x1, x2);
    } else if (discriminant == 0) {
        float x = -b / (2 * a);
        NSLog(@"x = %f", x);
    } else {
        NSLog(@"No solution");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Решение первого уравнения x^2 – 8x + 12 = 0
        solveQuadraticEquation(1, -8, 12);
        
        // Решение второго уравнения 12x^2 – 4x + 2 = 0
        solveQuadraticEquation(12, -4, 2);
        
        // Решение третьего уравнения x^2 – 100x - 2 = 0
        solveQuadraticEquation(1, -100, -2);
    }
    return 0;
}
//Второе задание


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        int num1, num2, num3;
//        
//        // Ввод чисел
//        NSLog(@"Введите первое число:");
//        scanf("%d", &num1);
//        
//        NSLog(@"Введите второе число:");
//        scanf("%d", &num2);
//        
//        NSLog(@"Введите третье число:");
//        scanf("%d", &num3);
//        
//        // Поиск большего числа
//        int maxNumber = num1;
//        
//        if (num2 > maxNumber) {
//            maxNumber = num2;
//        }
//        
//        if (num3 > maxNumber) {
//            maxNumber = num3;
//        }
//        
//        // Вывод результата
//        NSLog(@"Наибольшее число: %d", maxNumber);
//    }
//    return 0;
//}
//
//
