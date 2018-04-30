//: Playground - noun: a place where people can play

import UIKit

//TASK 1

class Person {
    
    var name: String
    weak var child: Son?
    
    init(name: String) {
        self.name = name
        print("Person: \(self.name) initialized")
    }
    
    deinit {
        print("Person: \(self.name) was deinitilized")
    }
}

class Son {

    let parent: Person
    
    init (parent: Person){
        self.parent = parent
        print("son of \(parent.name) was initilized")
    }
    
    deinit {
        print("child of \(parent.name) was deinitilized")
    }
}

do {
    let Tereza = Person(name: "Tereza" )
    let Sashko = Son(parent: Tereza)
    Tereza.child = Sashko
}


//TASK 2

//Part 1

class Operand {
    let number: Int
    weak var operand: Operand?
    init(number: Int) {
        self.number = number
        print("obj")
    }
    deinit {
        print("dein")
    }
}


let SumClosure = {(obj1: Operand, obj2: Operand) -> Int in
    return obj1.number + obj2.number
}


do {
    let ten = Operand(number: 10)
    let eleven = Operand(number: 11)
    ten.operand = eleven // retain cycle
    eleven.operand = ten //
    SumClosure(ten, eleven)
}

//Part 2

class OperandTwo {
    let number : Int = 42
    var clousure : (() -> ())? = nil
    init() {
        print("init")
        clousure = { [weak self] in
            print(self?.number as Any)
        }
    }
    deinit {
        print("deinit")
    }
}

var operandTwo : OperandTwo? = OperandTwo()
operandTwo = nil
