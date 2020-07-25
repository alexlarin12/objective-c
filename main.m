//
//  main.m
//  lesson1
//
//  Created by Alex Larin on 15.07.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double first;
        printf("Enter first number:\n");
        scanf("%lf", &first);
        
        double second;
        printf("Enter second number:\n");
        scanf("%lf", &second);
        
        char charValue;
        printf("Enter symbol: ");
        scanf("%s", &charValue);
        
        if (charValue == '+') {
            NSLog(@"%lf + %lf = %lf", first, second, first + second);
        } else if (charValue == '-'){
            NSLog(@"%lf - %lf = %lf", first, second, first - second);
            
        } else if (charValue == '/'){
            NSLog(@"%lf / %lf = %lf", first, second, first / second);
        } else if (charValue == '*'){
            NSLog(@"%lf * %lf = %lf", first, second, first * second);
        } else {
            NSLog(@"Wrong symbol between %lf and %lf", first, second);
        }
        printf("Enter first number:\n");
        scanf("%lf", &first);
        
        
        printf("Enter second number:\n");
        scanf("%lf", &second);
        double therd;
        printf("Enter therd number:\n");
        scanf("%lf", &therd);
        NSLog(@"Среднее число из трех переменных: %lf", (first + second + therd) / 3);
    }
    
    return 0;
}


