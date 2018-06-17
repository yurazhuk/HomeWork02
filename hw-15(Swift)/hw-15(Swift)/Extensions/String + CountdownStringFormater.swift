//
//  String + CountdownStringFormater.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/17/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//

import Foundation

import Foundation

extension String {
    static func countdownStringFormater(_ s1: Int?,_ s2: Int,_ s3: Int) -> String{
        if let st1 = s1 {
            let firstString = st1 > 9 ? "\(st1)" : "0\(st1)"
            let secondString = s2 > 9 ? "\(s2)" : "0\(s2)"
            let thirdString = s3 > 9 ? "\(s3)" : "0\(s3)"
            return "\(firstString):\(secondString):\(thirdString)"
        }
        else {
            let secondString = s2 > 9 ? "\(s2)" : "0\(s2)"
            let thirdString = s3 > 9 ? "\(s3)" : "0\(s3)"
            return "\(secondString):\(thirdString)"
        }
    }
}
