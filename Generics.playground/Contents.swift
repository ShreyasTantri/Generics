import UIKit
// Generics

// inout
var a = 5
var b = 10

func increment(_ value: inout Int) {
    value += 1
}

increment(&a)
print(a, b)

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

swapValues(&a, &b)
print(a,b)
// **************************************************

struct Box<T> {
    let value: T
}

// Declaration syntax: let intBox:Box<Int>
let intBox:Box<Int> = Box(value: 5)
let boolBox = Box(value: true)
let stringBox = Box(value: "Shreyas")

// **************************************************
// Equatable protocol
func isEqual<T: Equatable> (_ a: T, _ b: T) -> Bool {
    return a == b
}


struct A: Equatable {
    let name: String
}

let a1 = A(name: "Shreyas")
let a2 = A(name: "Shreyas")

//let result1 = isEqual("hello", "Shreyas")
//print(result1)

let result = isEqual(7, 7)
print(result)

let resultStructs = isEqual(a1, a2)
print(resultStructs)

// **************************************************
// Comparable protocol
func maxValue<T: Comparable>(_ a: T, _ b: T) -> T {
    return a > b ? a : b
}

let maxValueResultString = maxValue("Shreyas", "Sai")
let maxValueResultInt = maxValue(2, 6)
print(maxValueResultString)
print(maxValueResultInt)


func compare<T: Comparable> (_ a: T, _ b: T) -> Bool {
    return a < b
}

let answer = compare(2, 3)
print(answer)

// **************************************************
// where clause
func compare<T>(_ a: T, _ b: T) where T: Equatable {
    print(a == b)
}

compare(false, false)

// **************************************************
struct Pair<T> {
    let first: T
    let second: T
}

extension Pair where T: Equatable {
    func isSame() -> Bool {
        first == second
    }
}

let intPair = Pair(first: 1, second: 1)
intPair.isSame()

struct User: Equatable {
    let name: String
}

let user1 = User(name: "Shreyas")
let user2 = User(name: "Sai")

let userPair = Pair(first: user1, second: user2)
userPair.isSame()
