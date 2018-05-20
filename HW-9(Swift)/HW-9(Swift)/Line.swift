//
//  Line.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct Line: GeometricEntity, Equatable {
   
    private(set) var points = [Point]()
    let length: Double
    private(set) var stringDescriprion = "Line"
    
    static func ==(lhs: Line, rhs: Line) -> Bool {
        return lhs.length == rhs.length
    }
    
    func dotProduct(line: Line) -> Double {
        return (self[1].x - self[0].x) * (line[1].x - line[0].x) +
               (self[1].y - self[0].y) * (line[1].y - line[0].y)
    }
    
    func angle(line: Line) -> Double {
        return self.dotProduct(line:line) / (self.length * line.length)
    }
    
    init(_ p1: Point, _ p2: Point){
        points.append(contentsOf: [p1,p2])
        self.length = p1.distanceFrom(p2)
    }
}

