//
//  main.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/18/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

print("Hello, World!")

 print(getDegrees(Point(3,4), Point(0,0), Point(4,3), Point(0,0)))

let triangle = Figure(points: [Point(3,4), Point(0,0), Point(4,3)])

print(triangle!.type)

let square = Figure(points: [Point(0,0), Point(0,4), Point(4,4), Point(4,0)])

print(square?.type)
