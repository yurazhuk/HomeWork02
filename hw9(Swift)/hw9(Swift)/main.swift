//
//  main.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Point {
    private(set) var x : Int = 0
    private(set) var y : Int = 0
    
    init (_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

//Figure type enum


// quadrangle types




// ========================== TEST ==============================
// test1 : квадрат
var p1 = Point(0, 0)
var p2 = Point(0, 2)
var p3 = Point(2, 2)
var p4 = Point(2, 0)
var f = Figure(points: [p1,p2,p3,p4])
print(f?.type) // Quadrangle.square
print(f?.perimeter) // Perimeter: 8.0
print(Figure.calculateArea(f!)) // Area: 4.0
// test2 : прямокутник
var p5 = Point(0, 0)
var p6 = Point(0, 2)
var p7 = Point(6, 2)
var p8 = Point(6, 0)
var f2 = Figure(points: [p5,p6,p7,p8])

print(f2?.type) // Quadrangle.rectangle
print(f2?.perimeter) // Perimeter: 16.0
print(Figure.calculateArea(f2!)) // Area: 12.0
// test3 : ромб
var p9 = Point(3, 6)
var p10 = Point(5, 2)
var p11 = Point(7, 6)
var p12 = Point(5, 10)
var f3 = Figure(points: [p9,p10,p11,p12])

print(f3?.type) // Quadrangle.rhomb
print(f3?.perimeter) // Perimeter: 17.8885438199983
print(Figure.calculateArea(f3!)) // Area: 16.0
// test 4 : трикутник
var p13 = Point(3, 6)
var p14 = Point(5, 2)
var p15 = Point(7, 6)
var f4 = Figure(points: [p13,p14,p15])

print(f4?.type) // FigureType.triangle
print(f4?.perimeter) // Perimeter: 12.9442719099992
print(Figure.calculateArea(f4!)) // Area: 8.0
// test 4 : лінія
var p16 = Point(3, 6)
var p17 = Point(5, 2)
var f5 = Figure(points: [p13,p14])

print(f5?.type) // FigureType.line
print(f5?.perimeter) // Perimeter: 8.94427190999916
print(Figure.calculateArea(f5!)) // can't calculate area
// test 5 : невідомий чотирикутник
var p18 = Point(3, 6)
var p19 = Point(5, 22)
var p20 = Point(7, 6)
var p21 = Point(30, 4)

var f6 = Figure(points: [p18,p19,p20,p21])
print(f6?.type) // FigureType.unknown
print(f6?.perimeter) // Perimeter: 82.4097964957864
print(Figure.calculateArea(f6!)) // can't calculate area

// test 6 - знаходження мін/макс периметру і площі
var mathObj : Mathematics = Mathematics(array: f!,f2!,f3!,f4!,f5!, f6!)
print(mathObj.minPerim) // (8.0, "quadrangle(lesson9.Quadrangle.square)")
print(mathObj.maxPerim) // (82.4097964957864, "unknown")
print(mathObj.minArea)  // (4.0, "quadrangle(lesson9.Quadrangle.square)")
print(mathObj.maxArea)  // 16.0, "lesson9.Quadrangle.rhomb"
