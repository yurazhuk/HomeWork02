//
//  helpers.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation


func getDegrees(_ a: Point, _ b: Point,  _ c: Point, _ d: Point) -> Double {
    let vectorAB : Point = Point(b.x - a.x,b.y - a.y)
    let vectorAC : Point = Point(d.x - c.x,d.y - c.y)
    
    let skalar = vectorAB.x * vectorAB.y + vectorAC.x  * vectorAC.y
    
    let ab = (pow(vectorAB.x,2) + pow(vectorAB.y,2)).squareRoot()
    
    let ad = (pow(vectorAC.x,2) + pow(vectorAC.y,2)).squareRoot()
    
print(skalar)
    
    return  skalar / ab / ad
}

func resolveTriangle(points: [Point]) -> (Side,Angles){
    var side: Side {
        if points[0].distanceFrom(points[1]) == points[1].distanceFrom(points[2]),
            points[1].distanceFrom(points[2]) == points[2].distanceFrom(points[0]){
            return .Equilateral
        } else if points[0].distanceFrom(points[1]) == points[1].distanceFrom(points[2]),
            points[0].distanceFrom(points[1]) != points[2].distanceFrom(points[1]){
            return .Isosceles
        } else {
            return .Scalene
        }
    }
    
    var angles: Angles {
        if getDegrees(points[0], points[1], points[1], points[2]) == getDegrees(points[1], points[2], points[2], points[0]),
            acos(getDegrees(points[1], points[2], points[2], points[0])) == 1 {
            return .Right
        } else if pow(getDegrees(points[0], points[1], points[2], points[2]),2) + pow(getDegrees(points[0], points[2], points[2], points[1]),2) > pow(getDegrees(points[2], points[0], points[0], points[1]),2) {
            return .Acute
        } else {
            return .Obtuse
        }
        
    }
    return (side,angles)
}

//func returnQuadrilateral(_ arr: [Point]) -> Quadrilateral {
//    if arr.count != 4 {
//        print("unknown figure")
//        return .undefined
//    }
//    var distances  = [ arr[0].distanceFrom(arr[1]),
//                       arr[1].distanceFrom(arr[2]),
//                       arr[2].distanceFrom(arr[3]),
//                       arr[3].distanceFrom(arr[0])]
//
//    if distances[0] == distances[1],
//        distances[0] == distances[2],
//        distances[0] == distances[3] {
//
////        if is90degrees(arr[0], arr[1], arr[3]) {
////            return .square
////        } else {
////            return .rhomb
////        }
////    }
//
////    else if distances[0] == distances[2] ||
////        distances[1] == distances[3] {
////
//////        if is90degrees(arr[0], arr[1], arr[3]) {
//////            return .rectangle
////        }
//    }
//    return .undefined
//}

