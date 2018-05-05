import UIKit

// TASK 1

func factorial(of num: Int) -> Int {
    var result = 0
    var temp = num
    while (temp != 1) {
        result += num
        temp -= 1
    }
    return result
}

factorial(of: 5)

// TASK 2

func sort<T: Numeric>(array:inout [T], with algorithm: String) where T: Comparable {
    
    let arrayCount = array.count
    
    switch algorithm {
    case "selectionSort":
        for value in 0..<arrayCount - 1 {
            
            var minIdx = value
            
            for index in (value+1)...array.count - 1 {
                if array[index] < array[minIdx] {
                    minIdx = index
                }
            }
            
            let tmp = array[value]
            array[value] = array[minIdx]
            array[minIdx] = tmp
        }
        
        print("selectionSort")
        
    case "bubblesort":
        fallthrough
    default:
        for _ in 0...arrayCount {
            for value in 1...arrayCount-1 {
                if array[value - 1] > array[value] {
                    let largerValue = array[value - 1]
                    array[value - 1] = array[value]
                    array[value] = largerValue
                }
            }
        }
        
    }
}


var selectionSortArray = [3,32,32,32,32,323,12,31]
sort(array: &selectionSortArray, with: "selectionSortArray")

var bubbleSortArray = [2,4354,32,222.4]
sort(array: &bubbleSortArray, with: "bubbleSortArray")

var defaultMethodArray = [Double.ulpOfOne, Double.infinity, Double.pi]
sort(array: &defaultMethodArray, with: "kek")



//TASK 3

func analyze(_ c: String) {
    let ASCIICode = UnicodeScalar(c)
    if let value = ASCIICode?.value {
        switch value {
        case 48...57:
            print("this is num")
        case 65...90:
            print("this is a capital letter of English alphabet")
        case 97...122:
            print("this is a small letter of English alphabet")
        case 1040...1071:
            print("this is a capital letter of Ukrainian alphabet")
        case 1072...1103:
            print("this is a small letter of Ukrainian alphabet")
        default:
            print("some character, vowels, emoji, trade, etc")
        }
    }
}


analyze("ö")
analyze("r")
analyze("Н")

//TASK 4


func timesCharAppearInString(_ inputString: String) {
    
    var result = [Character:Int]()
    inputString.forEach({
            result[$0] = result.keys.contains($0) ? result[$0]! + 1 : 1
    })
    
    print("\nChar : QNTY ")

//    result.keys.forEach({
//            print("  \($0)      \(result[i]!)")})
//
    for i in result.keys {
        print("\(i)    | \(result[i]!)")
    }
}

var testString = "Створити функцію, яка аналізує вхідний рядок на входжень кожного символа. Результатом виконання функції є таблиця усіх символів рядка та кількостей їх входжень."

timesCharAppearInString(testString)



// TASK 6

func getBigestCircleWhichContainPoint(_ arrayOfCircles:[(x:Double, y:Double, rad:Double)], _ point:(p1: Double, p2: Double)) -> (Double, Double, Double){
    
    var maxCircle : (x: Double, y: Double, rad: Double) = (0.0,0.0,0.0)
    let circleArray = arrayOfCircles.sorted(by: {$0.rad > $1.rad})
    
    for i in circleArray {
        if pow((point.p1-i.x),2) + pow((point.p2-i.y),2) <= pow(i.rad,2) {
            maxCircle = (i.x,i.y,i.rad)
            print("point: \(point) inside: \(maxCircle)")
            break
        }
        else {
            print("point: \(point) is outside: \(i)")
        }
    }
    return maxCircle
}

