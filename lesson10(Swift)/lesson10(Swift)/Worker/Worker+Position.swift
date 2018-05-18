//
//  Worker+Position.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/14/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Worker {
    var position: Shields {
        
        if let validMonths = self.hiringDate,
           let result = Calendar.current.dateComponents([.month],
                                                        from: validMonths,
                                                        to: currentDate ).month
        {
            
            switch result {
            case 0...6:
                return .trainee
            case 6...12:
                return .junior
            case 12...18:
                return .middle
            case 18...24:
                return .senior
            default:
                return .lead
            }
            
        }
        return .unemployed
    }
}
