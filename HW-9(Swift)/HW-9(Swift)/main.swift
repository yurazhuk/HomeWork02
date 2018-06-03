//
//  main.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

let p1 = Point(x: 0,y: 0)
let p2 = Point(x: 3,y: 0)
let p3 = Point(x: 0,y: 3)
let p4 = Point(x: 3,y: 3)

let line = Line(pointA: p1, pointB: p2)
print(line.type?.rawValue ?? "something wrong with line")
print(line.getArea)
print(line.getPerimetr)
print(line.length)
print(line.vector.modulus)

let triangle = Triangle(pointA: p1, pointB: p2, pointC: p3)
print(triangle.type ?? "something wrong with triangle")
print(triangle.angle)
print(triangle.side)
print(triangle.getPerimetr)
print(triangle.getArea)

let square = Quadrilateral(p1,p2,p4,p3)
print(square.quadrilateralType)
print(square.getArea)
print(square.getPerimetr)
print(square.type ?? "something wrong with quadrilateral")

let math = Mathematics(array: line,triangle,square)

print("Max area is \(math.maxArea.0) of figure \(math.maxArea.1)")
print("Min area is \(math.minArea.0) of figure \(math.minArea.1)")
print("Max perim is \(math.maxPerim.0) of figure \(math.maxPerim.1)")
print("Min perim is \(math.minPerim.0) of figure \(math.minPerim.1)")



