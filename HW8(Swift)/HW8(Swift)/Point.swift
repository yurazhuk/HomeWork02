//
//  Point.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/9/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation


enum CoordinateSystems {
    case Decart
    case Polar
}

struct Point {
    
    
    //vars
    
    private(set) var x: Double = 0.0
    private(set) var y: Double = 0.0
    private(set) var radius: Double = 0.0
    private(set) var angle: Double = 0.0
    
    
    // setters
    
    mutating func setfromCortesian(x: Double, y: Double){
        self.x = x
        self.y = y
    }
    
    //inits
    init(){}
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
        self.radius = sqrt(x*x  + y*y)
        self.angle = atan(y/x)
    }
    
    init(radius: Double, angle: Double) {
        self.radius = radius
        self.angle = angle
        self.x = radius * cos(angle)
        self.y = radius * sin(angle)
    }
    
    // methods
    
    mutating func updateCortesianCordinates() {
        
        self.x = radius * cos(angle)
        self.y = radius  * sin(angle)
    }
    
    mutating func updatePolarCordinates() {
        self.radius = sqrt(x*x  + y*y)
        self.angle = atan(y/x)
    }
    
    mutating func moveInDecart(offsetX: Double, offSetY: Double) {
        self.x += offsetX
        self.y += offSetY
        updatePolarCordinates()
    }
    
    mutating func moveInDecart(offsetX: Double) {
        self.x += offsetX
        updatePolarCordinates()
    }
    
    mutating func moveInDecart(offSetY: Double) {
        self.y += offSetY
        updatePolarCordinates()
    }
    
    mutating func moveInPolar(offSetRadius: Double, offSetAngle: Double) {
        self.radius += offSetRadius
        self.angle += offSetAngle
        updateCortesianCordinates()
    }
    
    mutating func moveInPolar(offSetRadius: Double) {
        self.radius += offSetRadius
        updateCortesianCordinates()
    }
    
    mutating func moveInPolar(offSetAngle: Double) {
        self.angle += offSetAngle
        updateCortesianCordinates()
    }
    
    func printPoints(located inSystem: CoordinateSystems = .Decart) {
        switch inSystem {
        case .Decart:
            print("Point coordinates in Decart system is x:\(x), y:\(y)")
        case .Polar:
            print("Point coordinates in Polar system is radius:\(radius), angle:\(angle)")
        }
    }
}

