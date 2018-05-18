//
//  main.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/12/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

let calendar = Calendar.current
let currentDate = Date()

print(currentDate)

let DataBase = DB()

var e1:Worker = Worker(name: "Kek", surname: "Cheburek", dayOfBirth: 3, monthOfBirth: 2, yearOfBirth: 1488)!
var e2: Worker = Worker(name: "Kek", surname: "Cheburek", dayOfBirth: 2, monthOfBirth: 2, yearOfBirth: 1975)!


do {
try DataBase.hire(employee: &e2, day: 1, month: 5, year: 2018)
} catch Desc.emploeeDidntBorn {
    print("emploee didn`t born yet")
} catch Desc.emploeeIsTooYoung {
    print("emploee is too young")
}
print(e1.bazeSallary)
DataBase.changeSallary(of: &e1, by: 10000)
print(e1.bazeSallary)

print(e2.position)

print(e2.calculateSallaryForPeriod(from: e2.hiringDate!, to: currentDate))
