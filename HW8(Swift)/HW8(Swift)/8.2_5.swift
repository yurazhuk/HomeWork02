//
//  7.2_5.swift
//  HW8(Swift)
//
//  Created by yurii zhuk on 5/12/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Figure {
    
    static func calculateArea(of figure: Figure) -> Double{
        switch figure.type{
        case .unknown:
            return 0
        case .dot:
            return 0
        case .line:
            return 0
        case .triangle:
        //using Heron theorem
            let p = (figure[0].distanceFrom(figure[1]) + figure[1].distanceFrom(figure[2]) + figure[2].distanceFrom(figure[0])) / 2
            print("p = \(p)")
            return sqrt(p*(p - figure[0].distanceFrom(figure[1])) *
                          (p - figure[1].distanceFrom(figure[2])) *
                          (p - figure[2].distanceFrom(figure[0])))
        case .square:
            return 0
        case .polygon:
            return 0

        }
    }
}
