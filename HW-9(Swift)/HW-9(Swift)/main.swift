//
//  main.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/19/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

print("Hello, World!")

let p1 = Point(x: 0, y: 0)
let p2 = Point(x: 3, y: 2)
let p3 = Point(x: 6, y: 0)
let p4 = Point(x: 3, y: -2)


let line1 = Line(p1, p2)
let line2 = Figure(points: p3, p4)

print(line2.entity.area)
print(line2.entity.perimetr)

if let line = line2.entity as? Line {
print(line1.dotProduct(line: line))
print(line1.angle(line: line))
}

Mathematics.figures.append(line2)

let triangle1 = Figure(points: p1, p2, p3)

print(triangle1.entity.area)
print(triangle1.entity.perimetr)

if let triangle = triangle1.entity as? Triangle {
    print(triangle.isIsosceles)
    print(triangle.isEquilateral)
    print(triangle.isScalene)
    print(triangle.isRight)
    print("isObtuse")
    print(triangle.isObtuse)
    print(triangle.isAcute)
}

Mathematics.figures.append(triangle1)

let square1 = Figure(points: p1,p2,p3,p4)

print(square1.entity.area)
print(square1.entity.perimetr)

if let square = square1.entity as? Quadrilateral {
    print(square.isSquare)
    print(square.isRectangle)
    print(square.isRhombus)
}

Mathematics.figures.append(square1)

print(Mathematics.longestPerimetr())





