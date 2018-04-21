//: Playground - noun: a place where people can play

import UIKit

func getFibonacci(with n: Int) -> [Int] {
    var result = [0]
    var fibonacci = 0
    var b = 1
    
    for _ in 1..<n {
        let temp = fibonacci
        fibonacci = b
        b = temp + b
        result.append(fibonacci)
    }
    return result
}

var fibArray:[Int] = getFibonacci(with: 10)
var revArray = fibArray.reversed()
var snglArray = [Int](repeatElement(1, count: 100))
snglArray = snglArray.map{$0 * Int(arc4random_uniform(100)) }
print(snglArray[10...15])
let rptArray = [Int](repeatElement(snglArray[9], count: 10))
var oddArray = Array(stride(from: 1, through: 9, by: 2))
oddArray.append(11)
oddArray += [15, 17, 19]
oddArray.insert(13, at: oddArray.index(of: 15)!)
oddArray.removeSubrange(4..<7)
print(oddArray.removeLast())
oddArray.replaceSubrange(1..<oddArray.endIndex, with: [2,3,4])
oddArray.remove(at: oddArray.index(of: 3)!)
oddArray.contains(3)
print(oddArray)

