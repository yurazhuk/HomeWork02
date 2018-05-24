//
//  Figure + Perimetr.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/18/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation
extension Figure {
    static func calculatePerimeter(of figure: Figure) -> Double {
        
        var perimetr: Double = 0
        
        switch figure.points.count {
        case 0...2:
            print("can't calculate perimetr")
        default:
            
            var j = figure.points.count - 1
            
            for i in 0..<figure.points.count {
                perimetr += abs(figure[i].distanceFrom(figure[j]))
                j = i
            }
        }
        return perimetr
        
    }
}
