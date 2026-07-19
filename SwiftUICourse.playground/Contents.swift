import Foundation

func divisisbleBy7(number: Int) -> String {
    var ret: String = "I am \(number) and I am divisible by 7."

    if number % 7 != 0 {
        ret = "I am \(number) and I am not divisible by 7."
    }
    
    return ret
}

print (divisisbleBy7(number: 14))
print (divisisbleBy7(number: 13))

func divisibleByD(number: Int, divisor: Int)  -> String {
    var ret: String = "I am \(number) and I am divisible by \(divisor)."
    
    if number % divisor != 0 {
        ret = "I am \(number) and I am not divisible by \(divisor)."
    }
    
    return ret
}

print(divisibleByD(number: 12, divisor: 5))
print(divisibleByD(number: 21, divisor: 3))

func rangeDivisibleByD(number: Int, min: Int, max: Int) {
    for i:Int in min...max {
        print(divisibleByD(number: number, divisor: i))
    }
}

rangeDivisibleByD(number: 10, min: 1, max: 10)

func powerFunc(base: Int, power: Int) -> Int? {
    var ret: Int = 1
    if (base == 0) {
        return 0
    } else if (power == 0) {
        return 1
    } else if (power <= -1 ) {
        return nil
    }
    
    for _ in 0..<power {
        ret *= base
    }
    return ret
}

print(powerFunc(base: 0, power: 3))
print(powerFunc(base: 5, power: 0))
print(powerFunc(base: 5, power: -1))
print(powerFunc(base: 5, power: 3))

func sumPowers(n:Int, power:Int) -> Int? {
    // sunPowers(5, 2) returns
    // 1^2 + 2^2 + 3^2 + 4^2 + 5^2
    var ret = 0
    
    if n < 0 || power < 0 {
        print("Invalid n or power")
        return nil
    }
        
    for i in 1...n {
        if let value = powerFunc(base: i, power: power) {
            ret += value
        } else {
            return nil
        }
    }
    
    return ret
}
 
sumPowers(n:8, power:2)
sumPowers(n:-1, power:2)
sumPowers(n:0, power:-1)

// Counting occurences
func countOccurences(list: [Int], countMe: Int) -> (occurences: Int, msg: String)
{
    var cnt = 0
    var msg = ""
    if list.contains(countMe) {
        for i in list {
            if i == countMe {
                cnt += 1
            }
        }
        msg = "\(countMe) appears on the list \(cnt) times"
    } else {
        msg = "\(countMe) does not appear on the list"
    }
    return (cnt, msg)
}

print(countOccurences(list: [1001, 11, 10, -3, 11, -3], countMe: 1000))
print(countOccurences(list: [1001, 11, 10, -3, 11, -3], countMe: -3))

func repChar(n:Int, ch:String) -> String {
    return String(repeating: ch,count: n)
}

func repCharStroke(n:Int, ch:String = "*") -> String {
        return repChar(n: n, ch: ch)
}



print(repChar(n: 5, ch: "*"))
print(repCharStroke(n: 15))

