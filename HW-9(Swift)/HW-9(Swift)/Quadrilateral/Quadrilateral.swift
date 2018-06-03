//
//  Quadrilateral.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

final class Quadrilateral: Figure {
    init(_ poi: Point ...) {
        super.init(points: poi)
    }
    
    var quadrilateralType: QuadrilateralType {
        let sideA = self[0].distanceFrom(self[1])
        let sideB = self[1].distanceFrom(self[2]) // this vars were created to reduce reading
        let sideC = self[2].distanceFrom(self[3]) // complexity of code
        let sideD = self[3].distanceFrom(self[0])
        
        if sideA == sideB &&
            sideA == sideC && //assuming here that all sides are conected, to reduce complexity
            sideA == sideD {
            return .square
            
        } else if sideA == sideC &&
            sideB == sideD &&
            sideA != sideD &&
            Triangle(pointA: self[0], pointB: self[1], pointC: self[2]).angle == ByAngle.right {
            return .rectangle
        
        } else {
            return .rhombus
        }
    }
}
