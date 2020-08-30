//
//  FlockOfBirds.m
//  lesson5
//
//  Created by Alex Larin on 16.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "FlockOfBirds.h"
#import "Bird.h"

@implementation FlockOfBirds
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Создаем стаю птиц:");
    }
    return self;
}
- (void)configWithBirds:(NSArray *)birds {
   
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds) {
        NSLog(@"Добавляем птицу (%@) в стаю", bird.name);
    }
}
- (void)remove {
    NSLog(@"Удаляем стаю птиц и их свойства:");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}
- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc flock of birds");
    [super dealloc];
}

@end
