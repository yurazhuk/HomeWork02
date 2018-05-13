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
    
    func hire(employee: Worker) {
        workers.append(employee)
    }
    
    func fire(employee: Worker) {
        if let index = workers.index(of: employee) {
            workers.remove(at: index)
        }
}
    
    func changeSallary(of employee: inout Worker, by value: Int) {
        employee.salary += value
    }
    
}
