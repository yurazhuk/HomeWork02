//
//  Figure.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct Figure {
    private var points =  [Point]()
    
    private subscript(index: Int) -> Point {
        return points[index]
    }
    
    var entity: GeometricEntity {
        switch points.count {
        case 2:
            return Line(self[0], self[1])
        case 3:
            return Triangle(self[0], self[1], self[2])
        case 4:
            return Quadrilateral(self[0], self[1], self[2], self[3])
        default:
            return Unknown()
        }
    }
    init(points: Point...) {
        for point in points {
            self.points.append(point)
        }
    }
}

