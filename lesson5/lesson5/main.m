//
//  main.m
//  lesson5
//
//  Created by Alex Larin on 16.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "FlockOfBirds.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FlockOfBirds *birds = [[FlockOfBirds alloc] init];
        // Создание первой птицы:
        Bird *bird1 = [[Bird alloc]initWithName:@"Птица1" andLeftWing:@"Левое крыло" andRightWing:@"Правое крыло"];
        // Создание второй птицы:
        Bird *bird2 = [[Bird alloc]initWithName:@"Птица2" andLeftWing:@"Левое крыло" andRightWing:@"Правое крыло"];
        // Создание третьей птицы:
        Bird *bird3 = [[Bird alloc]initWithName:@"Птица3" andLeftWing:@"Левое крыло" andRightWing:@"Правое крыло"];
        // Создание четвертой птицы:
        Bird *bird4 = [[Bird alloc]initWithName:@"Птица4" andLeftWing:@"Левое крыло" andRightWing:@"Правое крыло"];
        // Создание массива птиц:
        NSArray *allBirds = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, nil];
        // Создание стаи птиц:
        [birds configWithBirds:allBirds];
        // Удаление стаи птиц и их компонентов:
        [birds release];
       
    }
    return 0;
}
