//
//  PrintTask.m
//  lesson6
//
//  Created by Alex Larin on 30.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "PrintTask.h"
#import "Arithmetic.h"

@implementation PrintTask
+(void)task: (int)first and: (int)second {
    dispatch_queue_t globalQueue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
    dispatch_sync(globalQueue, ^{
        int resultSum = [[Arithmetic new] beginWithAction:ActionTypeSum firstNumber:first secondNumber:second];
        NSLog(@"Sum result: %d", resultSum);
    });
    dispatch_sync(globalQueue, ^{
        int resultDivision = [[Arithmetic new] beginWithAction:ActionTypeDivision firstNumber:first secondNumber:second];
        NSLog(@"Division result: %d", resultDivision);
    });
    dispatch_sync(globalQueue, ^{
        int resultSubstruction = [[Arithmetic new] beginWithAction:ActionTypeSubstraction firstNumber:first secondNumber:second];
        NSLog(@"Substruction result: %d", resultSubstruction);
    });
    dispatch_sync(globalQueue, ^{
        int resultMultiplication = [[Arithmetic new] beginWithAction:ActionTypeMultiplication firstNumber:first secondNumber:second];
        NSLog(@"Multiplication result: %d", resultMultiplication);
    });
    dispatch_sync(globalQueue, ^{
        int resultRemainderOfDivision = [[Arithmetic new] beginWithAction:ActionTypeRemainderOfTheDivision firstNumber:first secondNumber:second];
        NSLog(@"RemainderOfDivision result: %d", resultRemainderOfDivision);
    });
    dispatch_sync(globalQueue, ^{
        int resultPifagor = [[Arithmetic new] beginWithAction:ActionTypePifagor firstNumber:first secondNumber:second];
        NSLog(@"Pifagor result: %d", resultPifagor);
    });}
@end
