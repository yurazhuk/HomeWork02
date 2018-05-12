//
//  task7.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/9/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Point {
    static func getPoint(x: Double, y: Double) -> Point {
        return Point(x: x, y: y)
    }
    
    static func getPoint(radius: Double, angle: Double) -> Point {
        return Point(radius: radius, angle: angle)
    }
    
    static func getPoint(cartesianStruct: CartesianCoordinates) -> Point {
        return Point(from: cartesianStruct)
    }
    
    static func getPoint(polarStruct: PolarCoordinates) -> Point {
        return Point(from: polarStruct)
    }
    
}
