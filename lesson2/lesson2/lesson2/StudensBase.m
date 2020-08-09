//
//  StudensBase.m
//  lesson2
//
//  Created by Alex Larin on 10.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import "StudensBase.h"
#import "Student.h"

@implementation StudensBase
-(NSArray<Student*>*)generateList {
    return @[
        [[Student alloc]
         initWithName:@"Alex" andSurName:@"Larin" andAge:47],
        [[Student alloc]
         initWithName:@"Ivan" andSurName:@"Larin" andAge:27],
        [[Student alloc]
         initWithName:@"Elena" andSurName:@"Voevodina" andAge:43]
    ];
}
-(void)printList {
   for (Student* student in self.generateList) {
       NSLog(@"%@", student.description);
    }
}

@end
