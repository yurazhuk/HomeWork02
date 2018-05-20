//
//  helpers.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

func returnQuadrilateral(_ arr: [Point]) -> Quadrilateral {
    if arr.count != 4 {
        print("unknown figure")
        return .undefined
    }
    var distances  = [ arr[0].distanceFrom(arr[1]),
                       arr[1].distanceFrom(arr[2]),
                       arr[2].distanceFrom(arr[3]),
                       arr[3].distanceFrom(arr[0])]
    
    if distances[0] == distances[1],
        distances[0] == distances[2],
        distances[0] == distances[3] {
        
//        if is90degrees(arr[0], arr[1], arr[3]) {
//            return .square
//        } else {
//            return .rhomb
//        }
//    }
        
//    else if distances[0] == distances[2] ||
//        distances[1] == distances[3] {
//
////        if is90degrees(arr[0], arr[1], arr[3]) {
////            return .rectangle
//        }
    }
    return .undefined
}
