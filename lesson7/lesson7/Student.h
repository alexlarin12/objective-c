//
//  Student.h
//  lesson7
//
//  Created by Alex Larin on 30.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject<NSSecureCoding>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
+ (BOOL)supportsSecureCoding;

@end

NS_ASSUME_NONNULL_END
