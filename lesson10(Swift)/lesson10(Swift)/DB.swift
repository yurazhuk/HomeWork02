//
//  DB.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/12/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

class DB {
    var workers = [Worker]()
    
    func hire(employee: inout Worker, day: Int, month: Int, year: Int) throws {
        let expectedHiringDate = calendar.date(from: DateComponents(year: year,
                           month: month,
                           day: day))
        
        if expectedHiringDate! <= employee.birthDay {
            throw Desc.emploeeDidntBorn
            
        } else if (calendar.date(byAdding: .year, value: -18, to: expectedHiringDate!)! <= employee.birthDay) {
            
            throw Desc.emploeeIsTooYoung
            
        } else {
            workers.append(employee)
            employee.hiringDate = expectedHiringDate
        }
    }
    
    func fire(employee: Worker) {
        if let index = workers.index(of: employee) {
            workers.remove(at: index)
        }
    }
    
    func changeSallary(of employee: inout Worker, by value: Int) {
        employee.bazeSallary += value
    }
        
    func search(emploee: Worker) -> Bool {
        return workers.contains(emploee)
    }
        
}


