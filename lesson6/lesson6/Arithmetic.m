//
//  Arithmetic.m
//  lesson6
//
//  Created by Alex Larin on 24.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "Arithmetic.h"



@implementation Arithmetic
ArithmeticBlock sum = ^(int a, int b) {
    return a + b;
};

ArithmeticBlock substraction = ^(int a, int b) {
    return a - b;
};

ArithmeticBlock multiplication = ^(int a, int b) {
    return a * b;
};

ArithmeticBlock division = ^(int a, int b) {
    return a / b;
};

ArithmeticBlock remainderOfTheDivision = ^(int a, int b) {
    return a % b;
};
ArithmeticBlock pifagor = ^(int a, int b) {
    return (a*a) + (b*b);
};

 
- (int)beginWithAction:(ActionType)action firstNumber:(int)first secondNumber:(int)second {
    switch (action) {
            
        case ActionTypeSum:
            return sum(first, second);
            break;
        case ActionTypeSubstraction:
            return substraction(first, second);
            break;
        case ActionTypeMultiplication:
            return multiplication(first, second);
            break;
        case ActionTypeDivision:
            return division(first, second);
            break;
        case ActionTypeRemainderOfTheDivision:
            return remainderOfTheDivision(first, second);
            break;
        case ActionTypePifagor:
            return pifagor(first, second);
            break;
    }
    
}


@end
