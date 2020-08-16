//
//  Students.h
//  lesson2
//
//  Created by Alex Larin on 09.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *surname;
@property (readonly, nonatomic) NSString *fullName;
@property (readonly, nonatomic) int age;

-(instancetype)initWithName:(NSString *)name andSurName:(NSString *)surName andAge:(int)age;
-(NSString*)description;
@end

NS_ASSUME_NONNULL_END
