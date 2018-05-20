//
//  TriangleType.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

enum  Triangle: haveAsociatedValue {
    typealias RawValue = <#type#>
    
    
    enum bySide {
        case Equilateral
        case Isosceles
        case Scalene
    }
    enum byAngles{
        case Right
        case Obtuse
        case Acute
    }
}

protocol haveAsociatedValue: RawRepresentable {
    
}
