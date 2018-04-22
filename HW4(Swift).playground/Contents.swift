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

if let indexOf15 = oddArray.index(of: 15) {
oddArray.insert(13, at: indexOf15)
}

oddArray.removeSubrange(4..<7)


print(oddArray.removeLast())

oddArray.replaceSubrange(1..<oddArray.endIndex, with: [2,3,4])

if let indexOf3 = oddArray.index(of: 3) {
oddArray.remove(at: indexOf3)
}

oddArray.contains(3)

print(oddArray)

//TASK 2

let chSet:Set<Character> = ["a", "b", "c", "d"]

var mChSet = chSet

mChSet.count

mChSet.insert("e")

let srtChSet = mChSet.sorted

print(mChSet.remove("f") ?? "noValue")

if mChSet.index(of: "d") != nil {
    mChSet.remove(at: mChSet.index(of: "d")!)
    print(mChSet)
}

if mChSet.index(of: "a") != nil {
    print(mChSet.distance(from: mChSet.startIndex, to: mChSet.index(of: "a")!))
}

mChSet.insert("a")

let aSet: Set = ["One", "Two", "Three", "1", "2"]
let bSet: Set = ["1", "2", "3", "One", "Two"]

let aUnique = aSet.subtracting(bSet)
let bUnique = bSet.subtracting(aSet)

let uncommonEl = aSet.symmetricDifference(bSet)

let uinion = aSet.union(bSet)

let xSet = Set(2...4)
let ySet = Set(1...6)
let zSet = Set(arrayLiteral: 3,4,2)
let x1Set: Set = [5,6,7]

print("is xSet subset of ySet ?: \(xSet.isSubset(of: ySet)) \nis subset of xSet ?: \(ySet.isSubset(of: xSet)))")
print("is xSet is superset of ySet ?: \(xSet.isSuperset(of: ySet)) \nis ySet is superset of xSet ?: \(ySet.isSuperset(of: xSet)) ")

print("is xSet equak to zSet?: \(xSet == zSet)")

print("is xSet strict subset of zSet?: \(xSet.isStrictSubset(of: zSet))")

print("is xSet strict superset of zSet?: \(zSet.isStrictSuperset(of: xSet))")


//TASK 3

let nDic = Dictionary(uniqueKeysWithValues: zip(1...5, ["one", "two", "three", "four", "five"]))

print(nDic[3]!)

print(nDic[nDic.index(forKey: 4)!])

var mNDict = nDic

mNDict[6] = "six"
mNDict[7] = "seven"


mNDict.updateValue("Six", forKey: 6)
mNDict.updateValue("Seven", forKey: 7)
mNDict.updateValue("Eight", forKey: 8)

mNDict.removeValue(forKey: 5)
mNDict.remove(at: mNDict.index(mNDict.startIndex, offsetBy: 3))

if let indexOf1 =  mNDict.index(forKey: 1),let indexOf7 = mNDict.index(forKey: 7) {
print(mNDict.distance(from: indexOf1, to: indexOf7))
}

let mNDictKeys = Array(mNDict.keys)

let mNDictValues = Array(mNDict.values)

print(mNDict.count, mNDictKeys.count, mNDictValues.count)

print(mNDict)

