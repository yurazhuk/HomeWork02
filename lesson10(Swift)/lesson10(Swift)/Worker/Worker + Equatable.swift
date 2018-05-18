//
//  extension.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/13/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Worker: Equatable{
    static func ==(lhs: Worker, rhs: Worker) -> Bool {
        return lhs.name == rhs.name &&
            lhs.surname == rhs.surname &&
            lhs.bazeSallary == rhs.bazeSallary &&
            lhs.birthDay == rhs.birthDay
    }
}
