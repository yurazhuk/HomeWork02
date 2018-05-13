//
//  7.2_5.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/12/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Figure {
    
    static func calculateArea(of figure: Figure) -> Double{
        switch figure.type{
       case .unknown, .dot, .line:
            return 0
        
        case .triangle:
        //using Heron theorem // i know that shoelace theorem also working for triangle
            let p = (figure[0].distanceFrom(figure[1]) + figure[1].distanceFrom(figure[2]) + figure[2].distanceFrom(figure[0])) / 2
            print("p = \(p)")
            return sqrt(p*(p - figure[0].distanceFrom(figure[1])) *
                          (p - figure[1].distanceFrom(figure[2])) *
                          (p - figure[2].distanceFrom(figure[0])))
       
        case .polygon, .square:
                //using Shoelace theorem
                var area: Double = 0
                var j = figure.count - 1
                
                for i in 0..<figure.count {
                    area += ((figure[j].x + figure[i].x) * (figure[j].y - figure[i].y))
                    j = i
                }
            
                return abs(area / 2)
                
            }
        }
    
    static func calculatePerimeter(of figure: Figure) -> Double {
        switch figure.type{
        case .unknown, .dot, .line:
            return 0
        case .polygon, .square, .triangle:
            var perimetr: Double = 0
            var j = figure.count - 1
            
            for i in 0..<figure.count {
                perimetr += abs(figure[i].distanceFrom(figure[j]))
                j = i
            }
            
            return perimetr
            
    }
    }
    
    func getArea() -> Double{
        switch self.type{
        case .unknown, .dot, .line:
            return 0
        
        case .triangle, .square, .polygon:
            //using Shoelace theorem
            var area: Double = 0
            var j = self.count - 1
            
            for i in 0..<self.count {
                area += ((self[j].x + self[i].x) * (self[j].y - self[i].y))
                j = i
            }
            
            return abs(area / 2)
            
        }
    }
    
    func getPerimeter() -> Double {
        switch self.type{
        case .unknown, .dot, .line:
            return 0
        case .triangle, .square, .polygon:
            var perimetr: Double = 0
            var j = self.count - 1
            
            for i in 0..<self.count {
                perimetr += abs(self[i].distanceFrom(self[j]))
                j = i
            }
            
            return perimetr
            
        }
    }
    
    
    
}
