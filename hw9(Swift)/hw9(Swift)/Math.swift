//
//  Math.swift
//  hw9(Swift)
//
//  Created by yurii zhuk on 5/18/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Mathematics {
    var array : [Figure] = []
    
    var minPerim : (Double, String) {
        get {
            for i in 0..<array.count - 1 {
                if Figure.calculatePerimeter(of: array[i+1]) < Figure.calculatePerimeter(of:  array[i]) {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (Figure.calculatePerimeter(of: array[0]), String(describing: array[0].type))
        }
    }
    
    var maxPerim : (Double, String) {
        get {
            for i in 0..<array.count - 1 {
                if Figure.calculatePerimeter(of: array[i+1]) < Figure.calculatePerimeter(of: array[i]){
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (Figure.calculatePerimeter(of: array[array.count-1]), String(describing: array[array.count-1].type))
        }
    }
    
    var minArea : (Double, String) {
        get {
            for i in 0..<array.count - 1 {
                if array[i+1].area < array[i].area {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (array[0].area, String(describing: array[0].type))
        }
    }
    
    
    var maxArea : (Double, String) {
        get {
            for i in 0..<array.count - 1 {
                if array[i+1].area < array[i].area {
                    (array[i], array[i+1]) = (array[i+1], array[i])
                }
            }
            return (array[array.count-1].area, String(describing: array[array.count-1].type))
        }
    }
    
    init(array: Figure...) {
        for fig in array {
            self.array.append(fig)
        }
    }
    
    init(array: [Figure]) {
        for fig in array {
            self.array.append(fig)
        }
    }
    
}


