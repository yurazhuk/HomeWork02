//
//  Figure+Area.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Figure {
    static func calculateArea(_ figure: Figure) -> (Double) {
        var area : Double = 0
        switch figure.points.count {
        case 0...2:
            print("can't calculate area")
        default:
            var j = figure.points.count - 1
            
            for i in 0..<figure.points.count {
                area += ((figure[j].x + figure[i].x) * (figure[j].y - figure[i].y))
                j = i
            }
        }
         return abs(area / 2)
    }
}
