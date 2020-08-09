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
        
    // Strings from array
         
         NSArray <NSString *> *newArray = @[@"one", @"two", @"three", @"four", @"five"];
         
         NSInteger countArray = [newArray count];
         long int count = countArray;

         // FOR:
         for (NSString *string in newArray) {
             NSLog(@"Цикл FOR: %@", string);
         }
         // FOR с условием:
         
         for (int i = 0; i < count; i++) {
             NSString *string = [newArray objectAtIndex: i ];
             NSLog(@"FOR с условием %@", string);
         }

         // FOR - CONTINUE
         for (NSString *string in newArray) {
             if ([string  isEqual: @"one"]) {
                 continue;
             }
             NSLog(@"CONTINUE %@", string);
         }
         // FOR - BREAK
         for (NSString *string in newArray) {
             if ([string  isEqual: @"three"]) {
                 break;
             }
             NSLog(@"BREAK %@", string);
         }
         
         // WHILE:
         int i = 0;
         while (i < count) {
             NSString *string = [newArray objectAtIndex: i ];
             NSLog(@"Цикл WHILE: %@", string);
             i++;
         }
         
         // DO-WHILE:
         i = 0;
         do {
             NSString *string = [newArray objectAtIndex: i ];
             NSLog(@"Цикл DO-WHILE: %@", string);
             i++;
         } while (i < count);
        
        /*
// CALCULATOR:
        double first = 0;
        printf("Enter first number:\n");
        scanf("%lf", &first);
        
        double second = 0;
        printf("Enter second number:\n");
        scanf("%lf", &second);
        
        enum Calculator{
            CalculatorSum,
            CalculatorSub,
            CalculatorMult,
            CalculatorDiv
        };
        
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
  */
        
 
    }
        
    return 0;
}
