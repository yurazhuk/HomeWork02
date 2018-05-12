//
//  main.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/9/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

var p1 = Point(x: 0, y: 0)
//p1.printPoints(located: .Polar)
//p1.printPoints()
//
//print("offset was performed")

//p1.moveInDecart(offsetX: 3)
//p1.printPoints(located: .Polar)
//p1.printPoints()

var p2 =  Point(from: CartesianCoordinates(x: 4, y: 0))
//p2.printPoints()
var p3 = Point(x: 0, y: 4)

let triangle:Figure = Figure(points: p1,p2,p3)
print(Figure.calculateArea(of: triangle))

