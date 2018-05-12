//
//  distanceBetweenTwoPoINTS.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/9/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Point {
    static func distanceBeetween(_ p1: Point,_ p2: Point) -> Double{
        return sqrt( (p1.x - p2.x)*(p1.x - p2.x) + (p1.y - p2.y)*(p1.y - p2.y) )
    }
    
    //  OR AS INSTANCE METHOD
    
    func distanceFrom(_ p: Point) -> Double {
        return sqrt( (self.x - p.x)*(self.x - p.x) + (self.y - p.y)*(self.y - p.y) )
    }
}
