//
//  MyNumber.m
//  HW5(Obj-C)
//
//  Created by yurii zhuk on 4/30/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

#import "MyNumber.h"

@implementation MyNumber

-(void)settValue{
    NSLog(@"What is the first name?");
    char cstring[40];
    scanf("%s", cstring);
    
    _value = [NSString stringWithCString:cstring encoding:1];
}
-(void)dealloc{
     NSLog(@"obj released");
    [_value release];
    [super dealloc];
  
    
}

@end
