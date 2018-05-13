//
//  Worker.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/12/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class Worker: Equatable{
    static func ==(lhs: Worker, rhs: Worker) -> Bool {
        return lhs.name == rhs.name &&
               lhs.surname == rhs.surname &&
               lhs.salary == rhs.salary //&&
//               lhs.hiringDate == rhs.hiringDate
    }
    
    let name: String
    let surname: String
    var salary: Int
//    let dayOfHiring: Int
//    let monthOfHiring: Int
//    let yearOfHiring: Int
//    let dayOfBirth: Int
//    let monthOfBirth: Int
//    let yearOfBirth: Int
    
//    private let hiringDate: Date
//    private let birthDay: Date
    

    
    func setBirthDate(day: Int, month: Int, year: Int) {
        var birthComponent = DateComponents()
        birthComponent.day = day
        birthComponent.month = month
        birthComponent.year = year
        print(birthComponent.description)
    }
    
    init(name: String, surname: String, salary: Int, dayOfHiring: Int, monthOfHiring: Int, yearOfHiring: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
        setBirthDate(day: dayOfHiring, month: monthOfHiring, year: yearOfHiring)
    }

}
