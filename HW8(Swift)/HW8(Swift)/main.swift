//
//  main.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/9/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation


var p1 = Point(x: -4, y: 6)

p1.printPoints(located: .Decart)

p1.moveInDecart(offsetX: 2, offSetY: 2)

p1.printPoints()

p1.moveInDecart(offsetX: -2)
p1.moveInDecart(offSetY: -2)

p1.printPoints(located: .Polar)

p1.moveInPolar(offSetRadius: 2, offSetAngle: 2)

p1.printPoints(located: .Polar)

p1.moveInPolar(offSetRadius: -2)
p1.moveInPolar(offSetAngle: -2)

var p2 = Point(x: 4, y: 6)

print(p1.distanceFrom(p2))
print(Point.distanceBeetween(p2, p1))

var p3 = Point(from: CartesianCoordinates(x: 4, y: -4))
var p4 = Point(x: 8, y: -4)
var p5 = Point(x: 8, y: -8)
var p6 = Point(x: -4, y: -8)

var p7 = Point()
var p8 = Point(from: PolarCoordinates(radius: 2, angle: 2))
var p9 = Point(radius: 2, angle: 2)



let triangle:Figure = Figure(points: [p1,p2,p4])
let randomFig:Figure = Figure(points: p1,p2,p3,p4,p5,p6)
print(Figure.calculatePerimeter(of: randomFig))
print(randomFig.getPerimeter())
print(Figure.calculateArea(of: randomFig))
print(randomFig.getArea())
print(triangle.getArea())

