//
//  DataRange.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/17/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

struct DateRange: Sequence {
    
    typealias Iterator = AnyIterator<Date>
    
    var calendar: Calendar
    var startDate: Date
    var endDate: Date?
    var component: Calendar.Component
    var step: Int
    
    func makeIterator() -> Iterator {
        
        precondition(step != 0, "Step should not be zero!")
        
        var current = startDate
        return AnyIterator {
            guard let next = self.calendar.date(byAdding: self.component,
                                                value: self.step,
                                                to: current) else {
                                                    return nil
            }
            
            let orderedType: ComparisonResult = self.step > 0 ?
                .orderedDescending :
                .orderedAscending
            if let last = self.endDate, next.compare(last) == orderedType {
                return nil
            }
            current = next
            return next
        }
    }
}
