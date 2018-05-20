//
//  Triangle.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct Triangle: GeometricEntity{
    private(set) var points = [Point]()
    private(set) var stringDescriprion = "Triangle"
    private(set) var isEquilateral: Bool
    private(set) var isIsosceles: Bool
    private(set) var isScalene: Bool {
        get{ return !(isIsosceles || isIsosceles) }
        set {}
    }
    private(set) var isRight: Bool
    private(set) var isAcute: Bool
    private(set) var isObtuse: Bool
    
    init(_ p1: Point, _ p2: Point, _ p3: Point) {
        points.append(contentsOf: [p1,p2,p3])
        let s1 = p1.distanceFrom(p2)
        let s2 = p2.distanceFrom(p3)
        let s3 = p3.distanceFrom(p1)
       
        self.isEquilateral = s1 == s2 && s2 == s3
        self.isIsosceles = s1 == s2 && s2 != s3
        self.isRight = (s1 * s1 + s2 * s2) == (s3 * s3)
        self.isAcute = (s1 * s1 + s2 * s2) > (s3 * s3)
        self.isObtuse = (s1 * s1 + s2 * s2) < (s3 * s3)
        
    }
}
