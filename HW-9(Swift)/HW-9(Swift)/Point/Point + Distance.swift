//
//  Point + dISTANCE.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Point {
    
    func distanceFrom(_ p: Point) -> Double {
        return sqrt( (self.x - p.x)*(self.x - p.x) + (self.y - p.y)*(self.y - p.y) )
    }
    
}
