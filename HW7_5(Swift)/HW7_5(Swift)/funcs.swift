//
//  funcs.swift
//  HW7_5(Swift)
//
//  Created by yurii zhuk on 5/6/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

func performOperation(_ a: Int, _ b: Int, _ operation: (Int, Int) -> Int) {
    print("Result: \(operation(a, b))")
}


func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func addition(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func division(_ a: Int, _ b: Int) -> Int {
    return a / b
}

func pov(_ a: Int, _ b: Int) -> Int {
    var power : Int = 1
    for _ in 1...b {
        power *= a
    }
    return power
}

func result(_ a: Int, _ b: Int) -> Int {
    return a % b
}




func getOperand() -> (Int) {
    var operand : Int? = nil
    if let input = readLine()
    {
        if let int = Int(input)
        {
            operand =  int
        }
        else{
            print("Enter Int val")
            operand = getOperand()
        }
    }
    return operand!
}

// Enter math operation
func enterMathOperation() -> (Int) {
    var operation : Int? = nil
    print("1: +")
    print("2: -")
    print("3: *")
    print("4: /")
    print("5: %")
    print("6: ^")
    print("Choose operation: ")
    if let input = readLine()
    {
        if let int = Int(input)
        {
            if int > 0, int < 7 {
                operation =  int
            }
            else {
                print("No operation avaliable for this num")
                operation = enterMathOperation()
            }
        }
        else{
            print("ERROR: Enter Int value!")
            operation = enterMathOperation()
        }
    }
    return operation!
}


var getMathOp = enterMathOperation()


