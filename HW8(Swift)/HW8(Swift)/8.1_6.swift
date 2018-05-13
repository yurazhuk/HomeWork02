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
        setFromCortesian(x: structWithCC.x, y: structWithCC.y)
    }
    
    init(from structWithPC: PolarCoordinates) {
        setFromPolar(radius: structWithPC.radius, angle: structWithPC.angle)
    }
}
