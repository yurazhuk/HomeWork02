//
//  DB+SallaryWithinPeriod.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation
fileprivate var multiplier = 0
extension Worker {
    func calculateSallaryForPeriod(from start: Date, to finish: Date) -> Int{
       
        let dayRange = calendar.dateRange(from: start,
                                          to: finish,
                                          component: .weekday,
                                          by: 1)
       
        for day in dayRange {
            let weekday = Calendar.current.component(.weekday, from: day)
            switch weekday {
            case 1,7:
                break
            default:
                multiplier += 1
            }
        }
        return multiplier * self.position.hourRate * 8
    }
    
}


fileprivate extension Calendar {
    func dateRange(from: Date, to: Date? = nil, component: Calendar.Component, by step: Int = 1) -> DateRange {
        return DateRange(calendar: self, startDate: from, endDate: to, component: component, step: step)
    }
}

