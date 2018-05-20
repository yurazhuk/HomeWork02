//
//  Quadrangle.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Quadrilateral: GeometricEntity {
    var points = [Point]()
    private(set) var stringDescriprion = "Quadrilateral"
    
    private(set) var isSquare: Bool
    private(set) var isRectangle: Bool
    private(set) var isRhombus: Bool
    
    init(_ p1: Point, _ p2: Point, _ p3: Point, _ p4: Point) {
        points.append(contentsOf: [p1,p2,p3,p4])
        let s1 = Line(p1,p2)
        let s2 = Line(p2,p3)
        let s3 = Line(p3,p4)
        let s4 = Line(p4,p1)
        
        self.isSquare = s1 == s2 && s1 == s3 && s1 == s4 && s1.angle(line: s2) == s2.angle(line: s3)
        self.isRectangle = s1 == s3 && s2 == s4 && s1 != s2 && s1.angle(line: s2) == s2.angle(line: s3)
        self.isRhombus = (s1 == s3 && s2 == s4 && s1 == s2) &&
        (s1.angle(line: s2) != s2.angle(line: s3))
    }
}

