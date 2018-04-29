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

class Operand {
    let number: Int
    init(number: Int) {
        self.number = number
    }
}
let ten = Operand(number: 10)
let eleven = Operand(number: 11)

let sum = {(obj1: Operand, obj2: Operand) -> Int in
    return obj1.number + obj2.number
}



//sum(ten, eleven)

