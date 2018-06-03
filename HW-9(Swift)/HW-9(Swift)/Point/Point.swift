//
//  Point.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct Point {
    
    private(set) var x: Double = 0.0
    private(set) var y: Double = 0.0
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
