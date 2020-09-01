//
//  Arithmetic.h
//  lesson6
//
//  Created by Alex Larin on 24.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef int (^ArithmeticBlock) (int a, int b);

typedef enum ActionType {
    ActionTypeSum,
    ActionTypeSubstraction,
    ActionTypeMultiplication,
    ActionTypeDivision,
    ActionTypeRemainderOfTheDivision,
    ActionTypePifagor
} ActionType ;

@interface Arithmetic : NSObject
- (int)beginWithAction:(ActionType)action firstNumber: (int)first secondNumber: (int)second;

@end

NS_ASSUME_NONNULL_END
