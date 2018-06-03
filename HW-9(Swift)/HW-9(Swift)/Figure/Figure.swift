//
//  Figure.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Figure {
    
    // inits
    
    init(points: [Point]){
        self.points = points
    }
    
    //subscripts
    
    subscript(index: Int) -> Point {
        return points[index]
    }
    
    //vars
    
    private var points = [Point]()
    
    var type: FigureType? {
        switch  points.count {
        case 2:
            return .line
        case 3:
            return .triangle
        case 4:
            return .quadrilateral
        default:
            return .unknown
        }
    }
    
    var getArea: Double {
        switch points.count {
        case 0...2:
            //            print("Area cant be calculated")
            return 0
        default:
            var result: Double = 0.0
            var j = self.points.count - 1
            
            for i in 0..<self.points.count {
                result += ((self[j].x + self[i].x) * (self[j].y - self[i].y))
                j = i
            }
            
            return abs(result / 2)
        }
    }
    
    var getPerimetr: Double {
        switch points.count {
        case 0...2:
            //            print("Perimetr cant be calculated")
            return 0
        default:
            var perimetr: Double = 0
            var j = self.points.count - 1
            
            for i in 0..<self.points.count {
                perimetr += abs(self[i].distanceFrom(self[j]))
                j = i
            }
            
            return perimetr
            
        }
    }
}
