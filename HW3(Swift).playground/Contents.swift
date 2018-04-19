//: Playground - noun: a place where people can play

import UIKit

//TASK 1

print(" Hello world")

//TASK 2

let twelve:Int8  = 12

let hundred: Int8 = -100

let hexaDecimal128 = 0x80

let min8BitUnsigned = UInt8.min

let min64BitUnsigned = UInt64.max

let someFloatNum:Float = 10235.34

let a:Character = "a"

let helloWorldString: String = "Hello World"

let trueBool:Bool = true

let tupleOfTwelves:(Int8,String) = (12,"twelve")

//TASK 3


var thirdString = "Hello World. This is Swift programming language"
let start = thirdString.startIndex

print(thirdString.count)

thirdString = thirdString.replacingOccurrences(of: "i", with: "u")
thirdString.remove(at: thirdString.index(start, offsetBy: 3))
thirdString.remove(at: thirdString.index(start, offsetBy: 6))
thirdString.remove(at: thirdString.index(start, offsetBy: 9))

thirdString += "(modified)"

print(thirdString.isEmpty)

thirdString.append(".")

thirdString.hasPrefix("Hello")

thirdString.hasSuffix("world")

thirdString.insert("-", at: thirdString.index(start, offsetBy: 9))

thirdString = thirdString.replacingOccurrences(of: "Thus us", with: "It is")

var tenthSymbol = thirdString[thirdString.index(start, offsetBy: 9)]

var fiftenthSymbol = thirdString[thirdString.index(start, offsetBy: 14)]

thirdString[thirdString.index(start,offsetBy: 9)..<thirdString.index(start, offsetBy: 15)]

// TASK 4


var integerNumber:Int?

var decimalNumber:Float?

integerNumber = 10

integerNumber! += 1; integerNumber! -= 1

integerNumber = -integerNumber!

decimalNumber = Float(integerNumber!)

var pairOfValues = (integerNumber,decimalNumber)

pairOfValues.0

if (pairOfValues.0 != nil) {
    print(pairOfValues.0!)
}

// Не  зрозумів чи 8 та 9 завданні,саме це потрібно було зробити.

if (pairOfValues.1 != nil) {
    print(pairOfValues.1!)
}

if let decNum = pairOfValues.0 {
    print(decNum)
}



