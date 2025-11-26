import Foundation


func makeIncreament(_ amount: Int) -> () -> Int {

    var runningTotal = 0

    func increment() -> Int {

        runningTotal += amount
        return runningTotal
    }

    return increment
}


var IncreamentByTen = makeIncreament(10)

print("--- IncreamentByTen (Capturing 10) ---")
print("Call 1: \(IncreamentByTen())") 
print("Call 2: \(IncreamentByTen())") 
print("Call 3: \(IncreamentByTen())") 

print("\n")

var IncreamentByFive = makeIncreament(5)

print("--- IncreamentByFive (Capturing 5) ---")
print("Call 1: \(IncreamentByFive())") 
print("Call 2: \(IncreamentByFive())") 

print("\n")

print("--- Final Check on IncreamentByTen ---")

print("Call 4: \(IncreamentByTen())") 
