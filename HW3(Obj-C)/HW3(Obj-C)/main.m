//
//  main.m
//  HW3(Obj-C)
//
//  Created by yurii zhuk on 4/19/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // TASK 1
        NSLog(@"TASK 1");
        NSLog(@"\n");
        
        NSLog(@"Hello, World!");
        
        NSLog(@"\n");
        
        //TASK 2
        
        NSLog(@"TASK 2");
        NSLog(@"\n");
        
        
        int8_t twelve = 12;
        NSLog(@"Ціле десяткове число 12 з мінімально необхідною розрядною сіткою: %i", twelve);
        
        int8_t minusHundred = -100;
        NSLog(@"Ціле десяткове число -100 з мінімально необхідною розрядною сіткою: %i", minusHundred);
        
        int hex = 0x80;
        NSLog(@"Ціле шістнадцяткове число, що рівне цілому десятковому числу 128: %#x", hex);
        
        int min16Bit = INT16_MIN;
        NSLog(@"Мінімальне десяткове значення числа, яке знаходиться у межах 16-розрядної сітки: %i", min16Bit);
        
        long long max64Bit = INT64_MAX;
        NSLog(@"Максимальне десяткове значення числа, яке знаходиться у межах 64-розрядної сітки: %lli", max64Bit);
        
        float floatNum = 10235.34;
        NSLog(@"Число з плавачою крапкою 10,235.34 з мінімально необхідною розрядною сіткою: %f", floatNum);
        
        char aChar[2] = "a";
        NSLog(@"Символ “а”: %s", aChar);
        
        NSString *helloString = @"Hello World";
        NSLog(@"Рядок “Hello World”: %@", helloString);
        
        BOOL trueBool = true;
        NSLog(@"Істину: %hhd", trueBool);
        NSLog(@"\n");
        
        //TASK 3
        
        NSLog(@"TASK 3");
        NSLog(@"\n");
        
        NSString *inputString = @"Hello World. This is Swift programming language";
        NSLog(@"Довжина рядка %@ дорівнює к-сті символів: %li", inputString,[inputString length]);
        
        inputString = [inputString stringByReplacingOccurrencesOfString:@"i" withString:@"u"];
        NSLog(@"Замінити кожне входження символа “i” на символ “u” : %@", inputString);
        
        inputString = [inputString stringByReplacingCharactersInRange:NSMakeRange(3, 1) withString:@""];
        inputString = [inputString stringByReplacingCharactersInRange:NSMakeRange(7, 1) withString:@""];
        inputString = [inputString stringByReplacingCharactersInRange:NSMakeRange(10, 1) withString:@""];
        NSLog(@"Видалити 4-й, 7-й та 10-й символи : %@", inputString);
        
        inputString = [ inputString stringByAppendingString:@"(modified)"];
        NSLog(@"Додати рядок “ (modified)” до існуючого рядка : %@", inputString);
        
        BOOL isEmpty = ([inputString length] == 0);
        NSLog(@"Вивести значення, що визначає чи існуючий рядок є пустим : %hhd", isEmpty);
        
        inputString = [inputString stringByAppendingString:@"."];
        NSLog(@"Додати символ “.” до кінця існуючого рядка : %@", inputString);
        
        BOOL havePrefix = [inputString hasPrefix:@"Hello"];
        NSLog(@"Вивести значення, що визначає чи рядок починається з підрядка “Hello” : %hhd", havePrefix);
        
        BOOL endingWith = [inputString hasSuffix:@"world"];
        NSLog(@"Вивести значення, що визначає чи рядок закінчується підрядком “world.” : %hhd", endingWith);
        
        NSMutableString *tempString = [NSMutableString stringWithString:inputString];
        [tempString insertString:@"-" atIndex:10];
        NSLog(@"Вставити символ “-“ після 10-го символа: %@", tempString);
        
        inputString = [tempString stringByReplacingOccurrencesOfString:@"Thus us" withString:@"It is"];
        NSLog(@"Замінити послідовність “Thus us” послідовністю “It is”: %@", inputString);
        
        char tenthSymbol = [inputString characterAtIndex:9];
        char fiftenthSymbol = [inputString characterAtIndex:14];
        NSLog(@"Вивести 10-й та 15-й симоли існуючого рядка: %c %c", tenthSymbol, fiftenthSymbol);
        
        NSRange range;
        range.location = 10;
        range.length = 5;
        
        inputString = [inputString substringWithRange:range];
        NSLog(@"Вивести підрядок, що знаходиться у межах 10-го (включно) та 15-го (невключно) символів: %@", inputString);
    }
    
    
    return 0;
}


