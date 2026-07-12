
import Foundation

print("Functions")

func greet(person name: String, with greeting: String, _ isQuestion: Bool = false) -> String {
    "\(greeting), \(name)\(isQuestion ? "?" : "!")"
}

print(greet(person: "Ron", with: "How are you"))
print(greet(person: "Ron", with: "How are you", true))

// Variadic parameter 0 or more values of certain type
print("\n\nVariadic")
func sum( _ numbers: Double...) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    return sum
}

print(sum(3,10,-7))
print(sum(3))
print(sum())


print("\n\ninout parameters")

func swap( a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var num1 = 13
var num2 = 17
print("num1: \(num1)   num2: \(num2)")

swap(a: &num1, b: &num2)

print("num1: \(num1)   num2: \(num2)")

print("\n\nFunctions Types")
func sumF( _ numbers: Double..., fn: (Double) -> Double) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += fn( number)
    }
    return sum
}

func square(x: Double) -> Double {
    x*x
}
// 1*1 + 2*2 + 3*3 = 14
print(sumF(1,2,3, fn: square))

// sqrt(1) + sqrt(2) + sqrt(3)
print(sumF(1,2,3, fn: sqrt))

// floor(1.1) + floor(1.9) + floor(1)
print(sumF(1.1, 1.9, 1, fn: floor))


