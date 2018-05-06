//
//  main.swift
//  HW7_5(Swift)
//
//  Created by yurii zhuk on 5/6/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation



print("Enter the 1-st operand:")
let a = getOperand()
print("Enter the 2-nd operand:")
let b = getOperand()
print(a,b)

switch getMathOp {
case 1 :
    performOperation(a, b, substract)
case 2 :
    performOperation(a, b, addition)
case 3 :
    performOperation(a, b, multiply)
case 4 :
    performOperation(a, b, division)
case 5 :
    performOperation(a, b, result)
case 6 :
    performOperation(a, b, pov)
default :
    print("error")
}

