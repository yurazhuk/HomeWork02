//
//  Worker+HourRate.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/14/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension  Shields{
  
    var hourRate: Int {
        switch self {
        case .unemployed:
            return 0
        case .trainee:
            return 8
        case .junior:
            return 12
        case .middle:
            return 16
        case .senior:
            return 20
        case .lead:
            return 22
        }
    }
}
