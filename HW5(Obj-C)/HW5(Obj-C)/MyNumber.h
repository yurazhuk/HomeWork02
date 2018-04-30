//
//  MyNumber.h
//  HW5(Obj-C)
//
//  Created by yurii zhuk on 4/30/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyNumber : NSObject

@property (strong, nonatomic) NSString *value;

-(void)dealloc;
-(void)settValue;
@end

