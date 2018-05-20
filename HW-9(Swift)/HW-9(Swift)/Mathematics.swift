//
//  Mathematics.swift
//  HW-9(Swift)
//
//  Created by yurii zhuk on 5/20/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Mathematics {
    static var figures = [Figure]()
    
    static func longestPerimetr() -> (String, Double){
        figures.append(Figure())
        var maxVal = Figure()
        print(maxVal)
        for figure in figures {
            if figure.entity.perimetr > maxVal.entity.perimetr {
                maxVal = figure
            }
        }
        return (maxVal.entity.stringDescriprion, maxVal.entity.perimetr)
    }
    
    static func bigestArea() -> (String, Double){
        figures.append(Figure())
        var maxVal = Figure()
        print(maxVal)
        for figure in figures {
            if figure.entity.area > maxVal.entity.area {
                maxVal = figure
            }
        }
        return (maxVal.entity.stringDescriprion, maxVal.entity.area)
    }
}
