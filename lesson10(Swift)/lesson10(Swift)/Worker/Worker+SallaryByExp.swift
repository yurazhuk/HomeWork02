//
//  Worker+recalculateSallaryByExp.swift
//  lesson10(Swift)
//
//  Created by yurii zhuk on 5/14/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

extension Worker {
    var salaryBazedOnExp: Int{
        return self.position.rawValue + bazeSallary
    }
}
