//
//  Worker.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/12/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Worker {
    
    let name: String
    let surname: String
    var birthDay: Date
    var hiringDate: Date?
    var bazeSallary = 200

    required init?(name: String,
                   surname: String,
                   dayOfBirth: Int,
                   monthOfBirth: Int,
                   yearOfBirth: Int) {
        self.name = name
        self.surname = surname
        let birthComponent = DateComponents(year: yearOfBirth,
                                            month: monthOfBirth,
                                            day: dayOfBirth)
        
        if let validDate = calendar.date(from: birthComponent) {
        self.birthDay = validDate
        } else {
        return nil
        }
    }
}


