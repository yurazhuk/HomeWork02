//
//  Math.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 6/3/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

final class Mathematics {
    private var array : [Figure] = []
    
    var minPerim : (Double, Figure) {
        get {
            for i in 0..<array.count - 1 {
                if array[i+1].getPerimetr < array[i].getPerimetr {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (array[0].getPerimetr, array[0])
        }
    }
    
    var maxPerim : (Double, Figure) {
        get {
            for i in 0..<array.count - 1 {
                if array[i+1].getPerimetr < array[i].getPerimetr {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (array[array.count-1].getPerimetr, array[array.count-1])
        }
    }
    
    var minArea : (Double, Figure) {
        get {
            for i in 0..<array.count - 1 {
                if array[i+1].getArea < array[i].getArea {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (array[0].getArea, array[0])
        }
    }
    
    var maxArea : (Double, Figure) {
        get {
            for i in 0..<array.count - 1 {
                if array[i+1].getArea < array[i].getArea {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (array[array.count-1].getArea, array[array.count-1])
        }
    }

    init(array: Figure...) {
        for el in array {
            self.array.append(el)
        }
    }
}
