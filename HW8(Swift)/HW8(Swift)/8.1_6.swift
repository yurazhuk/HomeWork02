//
//  initFromStruct.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/9/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct CartesianCoordinates {
    let x: Double
    let y: Double
}

struct PolarCoordinates {
    let radius: Double
    let angle: Double
    
}

extension Point {
    init(from structWithCC: CartesianCoordinates ) {
        setfromCortesian(x: structWithCC.x, y: structWithCC.y)
        
    }
    
    init(from structWithPC: PolarCoordinates) {
        print("kek")
        
        //        self.radius = structWithPC.radius
        //        self.angle = structWithPC.angle
        //        self.x = structWithPC.radius * cos(structWithPC.angle)
        //        self.y = structWithPC.radius * sin(structWithPC.angle)
    }
}
