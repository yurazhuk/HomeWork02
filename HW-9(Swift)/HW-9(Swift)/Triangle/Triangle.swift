//
//  Triangle.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

final class Triangle: Figure {
    init(pointA: Point, pointB: Point, pointC: Point) {
        super.init(points: [pointA, pointB, pointC])
    }
    var side: BySide {
        if (self[0].distanceFrom(self[1]) == self[1].distanceFrom(self[2]) &&
            (self[0].distanceFrom(self[1]) == self[2].distanceFrom(self[0]))) {
            return .equilateral
            
        } else if (self[0].distanceFrom(self[1]) == self[1].distanceFrom(self[2]) &&
            (self[0].distanceFrom(self[1]) != self[2].distanceFrom(self[0]))) {
            return .isosceles
            
        } else {
            return .scalene
        }
    }
    
    var angle: ByAngle {
        let sideA = Line(pointA: self[0], pointB: self[1]).length
        let sideB = Line(pointA: self[1], pointB: self[2]).length // this variables were made to
        let sideC = Line(pointA: self[2], pointB: self[0]).length // make code more readable
        
        if ((sideA * sideA) + (sideB * sideB) > sideC * sideC) {
            return .acute
        
        } else if((sideA * sideA) + (sideB * sideB) < sideC * sideC) {
            return .obtuse
        
        } else {
            return .right
        }
    }
}
