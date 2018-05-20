//
//  Figure.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Figure {
    private(set) var points = [Point]()
    
    
    var type : FigureType {
         get {
            switch points.count {
            case 2:
                return .line
            case 3:
//                return .triangle
                return .line
            case 4:
                return .
            default:
                return .unknown
            }
        }
        set {
            self.type = newValue
        }
    }
    
    
    init?(type: FigureType = .unknown ,points: [Point]) {
        for point in points {
            self.points.append(point)
        }
    }
        subscript(index: Int) -> Point {
            return points[index]
        }
        var area: Double {
            var area : Double = 0
            switch points.count {
            case 0...2:
                print("can't calculate area")
            default:
                var j = points.count - 1
                
                for i in 0...points.count{
                    area += ((self[j].x + self[i].x) * (self[j].y - self[i].y))
                    j = i
                }
            }
            return abs(area / 2)
        }
}


