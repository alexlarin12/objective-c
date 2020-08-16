//
//  FlockOfBirds.h
//  lesson5
//
//  Created by Alex Larin on 16.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
NS_ASSUME_NONNULL_BEGIN

@interface FlockOfBirds : NSObject
- (void)configWithBirds:(NSArray *)birds;

@property (nonatomic, strong) NSArray<Bird*> *birds;

@end

NS_ASSUME_NONNULL_END
