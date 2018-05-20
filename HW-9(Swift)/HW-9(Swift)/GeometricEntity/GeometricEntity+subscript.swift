//
//  GeometricEntity+subscript.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation
extension GeometricEntity {
    subscript(index: Int) -> Point {
        return points[index]
    }
}
