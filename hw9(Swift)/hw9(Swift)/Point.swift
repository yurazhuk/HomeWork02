//
//  Point.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/18/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct Point : Equatable{
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    private(set) var x : Double = 0
    private(set) var y : Double = 0
    
    func distanceFrom(_ p: Point) -> Double {
        return sqrt( (self.x - p.x)*(self.x - p.x) + (self.y - p.y)*(self.y - p.y) )
    }
    
    init (_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
}
