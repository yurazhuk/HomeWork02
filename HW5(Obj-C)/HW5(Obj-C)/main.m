//
//  main.m
//  HW5(Obj-C)
//
//  Created by yurii zhuk on 4/30/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyNumber.h"

int main(int argc, const char * argv[]) {
   
    MyNumber *newNumber = [[MyNumber alloc] init];
    [newNumber settValue];
    newNumber = nil;
    
    @autoreleasepool {
        MyNumber *newNumber = [[MyNumber alloc] init];
        [newNumber settValue];
        
         }
    
    return 0;
}
