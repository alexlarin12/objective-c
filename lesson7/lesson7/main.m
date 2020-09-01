//
//  main.m
//  lesson7
//
//  Created by Alex Larin on 30.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

NSString* directory() {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/studentslist.txt"];
}

void writeStudent(NSDictionary *dict) {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dict];
    [data writeToFile:directory() atomically:YES];
    NSLog(@"Данные сохранены в файл! %@", data);
}
Student* readStudent() {
    NSLog(@"Данные прочитаны из файла!");
    return [NSKeyedUnarchiver unarchiveObjectWithFile:directory()];
}

void printStudent(Student *students) {
    NSLog(@"СЛОВАРЬ ИЗ ФАЙЛА: %@", students);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // создаем 2 экземпляра класса студент:
        Student *student1 = [[Student new] init];
        student1.name = @"Alex";
        student1.surname = @"Larin";
        Student *student2 = [[Student new] init];
        student2.name = @"Elena";
        student2.surname = @"Voevodina";
        
        //создаем словарь из студентов:
        NSDictionary *dict = @{
            @"first":student1,
            @"second":student2
        };
        
        //записываем словарь в файл:
        writeStudent(dict);
        
        //читаем данные из файла:
        Student *studentsFromFile = readStudent();
        printStudent(studentsFromFile);
        
       
        
    }
    return 0;
}
