//
//  StudensBase.h
//  lesson2
//
//  Created by Alex Larin on 10.08.2020.
//  Copyright © 2020 Alex Larin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
NS_ASSUME_NONNULL_BEGIN

@interface StudensBase : NSObject

@property (nonatomic, strong) NSArray<Student*>* list;
-(NSArray<Student*>*)generateList;
-(void)printList;

@end

NS_ASSUME_NONNULL_END
