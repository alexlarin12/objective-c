//
//  Student.m
//  lesson7
//
//  Created by Alex Larin on 30.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (BOOL)supportsSecureCoding {
    return YES;
}
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.surname forKey:@"surname"];
    
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
     if (self = [super init]) {
         self.name = [aDecoder decodeObjectForKey:@"name"];
         self.surname = [aDecoder decodeObjectForKey:@"surname"];
       }
       return self;
}

@end
