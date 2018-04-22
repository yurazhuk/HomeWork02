//
//  main.m
//  HW4(Obj-c)
//
//  Created by yurii zhuk on 4/22/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *fibArr = @[@0, @1, @1, @2, @3, @5, @8, @13, @21, @34];
        NSLog(@"%@", fibArr);
        
        NSArray *revArray = [[fibArr reverseObjectEnumerator] allObjects];
        NSLog(@"%@", revArray);
        
        NSArray *snglArray = [NSArray new];
        for (int i = 0; i < 100; i++) {
          snglArray = [snglArray arrayByAddingObject: @(arc4random_uniform(100))];
        }
        NSLog(@"%@", snglArray);
        
        NSLog(@"\n array size = %lu", [snglArray count]);
        
        NSLog(@"\n obj at index %@", [snglArray objectAtIndex:10]);
        
        NSLog(@"\n objects at indexes: %@", [snglArray objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(10, 5)]]);
        
        NSArray *rptArray = [NSArray new];
        for (int i = 0; i < 10; i++) {
            rptArray = [rptArray arrayByAddingObject: snglArray[10]];
        }
        NSLog(@"\n 10 obj were added  %@", rptArray);
        
        NSArray *oddArr = @[@1, @3, @5, @7, @9];
        oddArr = [oddArr arrayByAddingObject:@11];
        NSLog(@"\n arr was created %@", oddArr);
        
        
        oddArr = [oddArr arrayByAddingObjectsFromArray:@[@15, @17, @19]];
        NSLog(@"\n obj were added  %@", oddArr);
        
        NSMutableArray *mutableOddArr = [NSMutableArray arrayWithArray:oddArr];
        [mutableOddArr insertObject:@13 atIndex:[mutableOddArr indexOfObject:@15]];
        NSLog(@"\n 13 was inserted %@", mutableOddArr);
        
        [mutableOddArr removeObjectsInRange:NSMakeRange(4, 3)];
        NSLog(@"\n Items were removed  %@", mutableOddArr);
        
        NSLog(@"\n last obj = %@", mutableOddArr.lastObject);
        
        [mutableOddArr replaceObjectsInRange:NSMakeRange(1, mutableOddArr.count -1) withObjectsFromArray:@[@2, @3, @4]];
        NSLog(@"\n Items were removed  %@", mutableOddArr);
        
        [mutableOddArr removeObject:@3];
        NSLog(@"\n Item 3  was removed %@", mutableOddArr);
        
        NSLog(@"\n contains 3?:  %hhd", [mutableOddArr containsObject:@3]);
        
        NSLog(@"\n%@", mutableOddArr);
        
    }
    return 0;
}

