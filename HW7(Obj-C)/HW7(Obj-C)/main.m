//
//  main.m
//  HW7(Obj-C)
//
//  Created by yurii zhuk on 5/5/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

#import <Foundation/Foundation.h>

int factorial(int value);
void bubbleSort(int arr[], int n);
void swap(int *xp, int *yp);
void printArray(int arr[], int size);
void selectionSort(int arr[], int n);
void algorithmPicker(char string[10], int arr[], int n);
void characterLocator(NSString* string);
void stringAnalyzer(NSString *string);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //TASK 1
        
        int x = factorial(5);
        NSLog(@"the value is %i", x);
        
        //TASK 2
        
        int arr[] = {2, 1, 21, 5, 7, 99, 24, 52, 71, 6, 4};
        int n = sizeof(arr)/sizeof(arr[0]);
        algorithmPicker("bubbleSort", arr, n);
        
        //TASK 3
        
        characterLocator(@"k");
        characterLocator(@"г");
        characterLocator(@"æ");
        
        //TASK 4
        
        stringAnalyzer(@"kek"); /// NEED HINT ON 169
        
    }
    return 0;
}


////////////////////////////////////////////////////////////
//TASK 1
////////////////////////////////////////////////////////////

int factorial(int value)
{
    if (value <= 1) {
        return value;
    } else {
        return value * factorial(value - 1);
    }
}

////////////////////////////////////////////////////////////
//TASK 2
////////////////////////////////////////////////////////////

void bubbleSort(int arr[], int n)
{
    int i, j;
    
    for (i = 0; i < n-1; i++)
        for (j = 0; j < n-i-1; j++)
            if (arr[j] > arr[j+1])
                swap(&arr[j], &arr[j+1]);
}

void selectionSort(int arr[], int n)
{
    int i, j, min_idx;
    
    for (i = 0; i < n-1; i++)
    {
        min_idx = i;
        for (j = i+1; j < n; j++)
            if (arr[j] < arr[min_idx])
                min_idx = j;
        
        swap(&arr[min_idx], &arr[i]);
    }
}


void algorithmPicker(char string[10], int arr[], int n){
    printArray(arr, n);
    if (strcmp(string, "bubbleSort") == 0)
    {
        bubbleSort(arr, n);
        
    }
    else
    {
        selectionSort(arr, n);
    }
    printArray(arr, n);
}

void swap(int *xp, int *yp)
{
    
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}
void printArray(int arr[], int size)
{
    for (int i=0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}


////////////////////////////////////////////////////////////
//TASK 3
////////////////////////////////////////////////////////////

void characterLocator(NSString* string){
    //
    int asciiCode = [string characterAtIndex:0];
    
    if (string.length < 2 || string.length == 0){
        switch (asciiCode) {
            case 65 ... 90:
                NSLog(@"this is a capital letter of English alphabet");
                break;
            case 97 ... 122:
                NSLog(@"this is a small letter of English alphabet");
                break;
            case 1040 ... 1071:
                NSLog(@"this is a capital letter of Ukrainian alphabet");
                break;
            case 1072 ... 1103:
                NSLog(@"this is a small letter of Ukrainian alphabet");
                break;
            default:
                NSLog(@"some character, vowels, emoji, trade, etc");
        }
    } else {
        NSLog(@"Plz enter one symbol");
    }
}

////////////////////////////////////////////////////////////
//TASK 4
////////////////////////////////////////////////////////////


void stringAnalyzer(NSString *string) {
    NSMutableDictionary *result = @{}.mutableCopy;
    unsigned long length = string.length;
    
    for(int i = 0; i < length; i++) {
        
        NSString *curent = [string substringWithRange:NSMakeRange(i, 1)];
        
        if (![result objectForKey: curent]) {
            [result setValue: @1 forKey: curent];
            } else {
//                [result setValue: (int)[result valueForKey:curent] forKey: curent]; need hint
             }
             }
             NSLog(@"Dictionary: %@", [result description]);
             }
             
