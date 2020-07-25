//
//  Test.m
//  lesson2
//
//  Created by Alex Larin on 25.07.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "Test.h"

@implementation Test
+ (NSNumber *)sum: (NSNumber *)first and: (NSNumber *)second {
    int result = [first intValue] + [second intValue];
    return [NSNumber numberWithInt:result];
}
+ (NSNumber *)subtraction: (NSNumber *)first and: (NSNumber *)second {
    int result = [first intValue] - [second intValue];
    return [NSNumber numberWithInt:result];
}
+ (NSNumber *)multiplication: (NSNumber *)first and: (NSNumber *)second {
    int result = [first intValue] * [second intValue];
    return [NSNumber numberWithInt:result];
}
+ (NSNumber *)division: (NSNumber *)first and: (NSNumber *)second {
    int result = [first intValue] / [second intValue];
    return [NSNumber numberWithInt:result];
}


+ (BOOL)abc: (NSNumber *)character {
    char letter = [character charValue];
    NSString * abc = [NSString stringWithFormat:@"%c", letter];
    NSString *abcHigh = [abc uppercaseString];
    NSString *alphabet = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    if ([alphabet containsString:abcHigh]) {
        NSLog(@"Right");
        return YES;
    } else {
        NSLog(@"Wrong");
        return NO;
    }
}
@end
