//
//  Bird.h
//  lesson5
//
//  Created by Alex Larin on 16.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject
- (instancetype)initWithName:(NSString *)name andLeftWing:(NSString *)left andRightWing:(NSString *)right;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *left;
@property (nonatomic, strong) NSString *right;

@end

NS_ASSUME_NONNULL_END
