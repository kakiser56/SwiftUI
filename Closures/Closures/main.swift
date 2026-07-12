//
//  main.swift
//  Closures
//
//  Created by Ron Erez on 18/10/2023.
//

import Foundation

print("Hello Closures!")

func mathOp(a: Int, b: Int, fn: (Int, Int) -> Int) -> Int {
    fn(a, b)
}

func add(a: Int, b: Int) -> Int {
    a + b
}

func strange( a: Int, b: Int) -> Int {
    a + b - a * b + 1
}

print(mathOp(a: 3, b: 2, fn: add))
print(mathOp(a: 3, b: 2, fn: strange))
// 3  +  2 - 3 * 2 + 1 = 5-5 = 0

print(mathOp(a: 3, b: 2, fn: +))
print(mathOp(a: 3, b: 2, fn: -))
print(mathOp(a: 3, b: 2, fn: *))
print(mathOp(a: 5, b: 2, fn: { ( a: Int, b: Int) -> Int in
    a + b - a * b + 1
} ))

// Simplify
// Trailing Closure Syntax
print(mathOp(a: 5, b: 2) { (a, b) in
    a + b - a * b + 1
} )

// Shorthand arguments: $0, $1, $2, ...
print(mathOp(a: 5, b: 2) {
    $0 + $1 - $0 * $1 + 1
} )

// Treat closures as variables
let simpleClosure = {
    print("This is a very simple closure")
}

simpleClosure()
let someValue = simpleClosure

someValue()

let addClosure = { (a: Int, b: Int) -> Int in
    return a + b
}

print(addClosure(3, 5))


