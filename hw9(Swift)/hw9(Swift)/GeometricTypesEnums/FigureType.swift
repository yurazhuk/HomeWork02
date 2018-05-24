//
//  FigureType.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/18/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

enum FigureType{
    case unknown
    case line
    case triangle(Angles,Side)
    case quadrilateral(QuadrangleShape)
}

enum Angles{
    case Right
    case Obtuse
    case Acute
}

enum Side {
    case Equilateral
    case Isosceles
    case Scalene
}

enum QuadrangleShape {
    case square
    case rectangle
    case rhomb
    case undefined
}
