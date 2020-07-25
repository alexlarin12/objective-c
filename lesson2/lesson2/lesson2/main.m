//
//  main.m
//  lesson2
//
//  Created by Alex Larin on 25.07.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
// CALCULATOR:
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
            NSLog(@"%lf + %lf = %@", first, second, [Test sum:[NSNumber numberWithInt:first] and:[NSNumber numberWithInt:second]]);
        } else if (charValue == '-'){
            NSLog(@"%lf - %lf = %@", first, second, [Test subtraction:[NSNumber numberWithInt:first] and:[NSNumber numberWithInt:second]]);
        } else if (charValue == '*'){
            NSLog(@"%lf * %lf = %@", first, second, [Test multiplication:[NSNumber numberWithInt:first] and:[NSNumber numberWithInt:second]]);
        } else if (charValue == '/'){
            NSLog(@"%lf / %lf = %@", first, second, [Test division:[NSNumber numberWithInt:first] and:[NSNumber numberWithInt:second]]);
        } else {
            NSLog(@"Wrong symbol between %lf and %lf", first, second);
        }
 // ALPHABET:
        char letter;
        printf("Enter some english chsrscter: ");
        scanf("%s", &letter);
        NSLog(@"%hhd",[Test abc:[NSNumber numberWithChar:letter]]);
    }
        
    return 0;
}
