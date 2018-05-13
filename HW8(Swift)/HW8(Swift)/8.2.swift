//
//  7.2.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/11/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation
enum FigureType {
    case unknown
    case dot
    case line
    case triangle
    case square
    case polygon
}

struct Figure {
    private var arrayOfPoints = [Point]()
    var count: Int {
    return arrayOfPoints.count
    }
    
    var type: FigureType {
        switch arrayOfPoints.count {
        case 0:
            return.unknown
        case 1:
            return .dot
        case 2:
            return .line
        case 3:
            return .triangle
        case 4:
            return .square
        default:
            return .polygon
        }
    }
    
    subscript(index: Int) -> Point {
        return arrayOfPoints[index]
    }
    
    init (points: Point...){
        points.forEach {
            arrayOfPoints.append($0)
        }
                  print(self.type)
    }
    
    init(points: [Point]){
        points.forEach {
            arrayOfPoints.append($0)
        }
        print(self.type)
    }
    
}
