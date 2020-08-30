//
//  Bird.m
//  lesson5
//
//  Created by Alex Larin on 16.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "Bird.h"

@implementation Bird
- (instancetype)initWithName:(NSString *)name andLeftWing:(NSString *)left andRightWing:(NSString *)right {
    self = [super init];
    if (self) {
        [name retain];
        [left retain];
        [right retain];
        [name release];
        [left release];
        [right release];
        _name = name;
        _left = left;
        _right = right;
        NSLog(@"Создание птицы Имя: %@ Крыло левое: %@ Крыло правое: %@", name, left, right);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc BirdName - %@ LeftWing - %@ RightWing - %@", _name, _left, _right);
    [_name release];
    [_left release];
    [_right release];
    [super dealloc];
}
@end
