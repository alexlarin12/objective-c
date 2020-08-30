//
//  main.m
//  lesson6
//
//  Created by Alex Larin on 24.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintTask.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int first = 10;
        int second = 2;
        [PrintTask task:first and:second];
      
    }
    return 0;
}
