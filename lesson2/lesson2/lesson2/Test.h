//
//  Test.h
//  lesson2
//
//  Created by Alex Larin on 25.07.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject
+ (NSNumber *)sum: (NSNumber *)first and: (NSNumber *)second;
+ (NSNumber *)subtraction: (NSNumber *)first and: (NSNumber *)second;
+ (NSNumber *)multiplication: (NSNumber *)first and: (NSNumber *)second;
+ (NSNumber *)division: (NSNumber *)first and: (NSNumber *)second;
+ (BOOL)abc: (NSNumber *)character;
@end

NS_ASSUME_NONNULL_END
