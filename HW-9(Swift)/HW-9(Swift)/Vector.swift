//
//  Vector.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct Vector {
    
    // vars
    
    private let p1: Point
    private let p2: Point
    
    var modulus: Double {
        return sqrt((p2.x - p1.x) * (p2.x - p1.x) +
            (p2.y - p1.y) * (p2.y - p1.y))
    }
    
    var scalar: Double {
        // formula
        return 0
    }
    
    func distanceFromVector( _ vector: Vector) -> Double {
        // formula
        
        return 0
    }
    
    // inits
    
    init(p1: Point, p2: Point) {
        self.p1 = p1
        self.p2 = p2
    }
}
