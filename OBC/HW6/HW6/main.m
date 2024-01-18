//
//  main.m
//  HW6
//
//  Created by Герман Яренко on 17.01.24.
//


#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;
@property (nonatomic, strong) NSString *name;

@end

@implementation Robot

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Создание объекта робота
        Robot *robot = [[Robot alloc] init];
        robot.x = 10;
        robot.y = 20;
        robot.name = @"Robbie";
        
        // Сохранение объекта робота в userDefaults
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
        [defaults setObject:robotData forKey:@"SavedRobot"];
        [defaults synchronize];
        
        // Получение объекта робота из userDefaults
        NSData *savedRobotData = [defaults objectForKey:@"SavedRobot"];
        Robot *savedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:savedRobotData];
        NSLog(@"Saved Robot Name: %@", savedRobot.name);
        NSLog(@"Saved Robot Coordinates: (%ld, %ld)", (long)savedRobot.x, (long)savedRobot.y);
        
        // Сохранение информации о роботе в файл
        NSString *fileName = [NSString stringWithFormat:@"%@.txt", savedRobot.name];
        NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
        NSString *fileContent = [NSString stringWithFormat:@"Name: %@, Coordinates: (%ld, %ld)", savedRobot.name, savedRobot.x, savedRobot.y];
        [fileContent writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        // Чтение содержимого файла и отображение в консоли
        NSString *fileContentRead = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"File Content:\n%@", fileContentRead);
    }
    return 0;
}
