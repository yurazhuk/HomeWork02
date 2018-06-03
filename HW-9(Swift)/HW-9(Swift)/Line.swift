//
//  Line.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

final class Line: Figure {
    init(pointA: Point, pointB: Point) {
        super.init(points: [pointA, pointB])
    }
    
    lazy var length = self[0].distanceFrom(self[1])
    
    lazy var vector = Vector(p1: self[0], p2: self[1])
}


