import Foundation


func add(no1: Int, no2: Int) -> Double {
    return Double(no1 + no2)
}

func mul(no1: Int, no2: Int) -> Double {
    return Double(no1 * no2)
}


func div(no1: Int, no2: Int) -> Double {
    if no2 == 0 {
        print("Warning: Division by zero attempted.")
        return Double.nan 
    }
    return Double(no1) / Double(no2)
}


func sub(no1: Int, no2: Int) -> Double {
    return Double(no1 - no2)
}



func calcFunc(operation: (Int, Int) -> Double, no1: Int, no2: Int) -> Double {
    return operation(no1, no2)
}



let num1 = 10
let num2 = 20
let num3 = 3

print("--- Testing calcFunc with Arithmetic Operations ---")

let additionResult = calcFunc(add, no1: num1, no2: num2)
print("Result of add(\(num1), \(num2)): \(additionResult)") 

let multiplicationResult = calcFunc(mul, no1: num1, no2: num2)
print("Result of mul(\(num1), \(num2)): \(multiplicationResult)")


let divisionResult = calcFunc(div, no1: num2, no2: num3)
print("Result of div(\(num2), \(num3)): \(divisionResult)") 


let subtractionResult = calcFunc(sub, no1: num1, no2: num2)
print("Result of sub(\(num1), \(num2)): \(subtractionResult)")

let divisionByZeroResult = calcFunc(div, no1: 10, no2: 0)
print("Result of div(10, 0): \(divisionByZeroResult)")