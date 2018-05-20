//
//  GeometricEntity+perimetr.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension GeometricEntity {
    var perimetr: Double {
        
        switch points.count {
        case 0...2:
            return 0
        default:
            var perimetr: Double = 0
            var j = points.count - 1
            
            for i in 0..<points.count {
                perimetr += abs(points[i].distanceFrom(points[j]))
                j = i
            }
            return perimetr
        }
    }
}
