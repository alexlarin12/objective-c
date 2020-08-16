//
//  Students.m
//  lesson2
//
//  Created by Alex Larin on 09.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWithName:(NSString *)name andSurName:(NSString *)surName andAge:(int)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surName;
        self->_age = age;
    }
    return self;
}
-(NSString*)fullName {
    return [NSString stringWithFormat:@"%@%@%@", self.name,@" " ,self.surname];//[[NSString alloc] WithFormat:@"%@ %@", self.surname, self.name];
}
-(NSString*)description {
    return [[NSString alloc] initWithFormat:@"Студент %@ Возраст: %d\n", self.fullName, self.age];
}

@end
