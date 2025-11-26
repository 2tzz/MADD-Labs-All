import Foundation

// --- 1. Data Structures: Array, Dictionary, and Set ---

var numbersArray: [Int] = [10, 20, 30, 40, 50]
print("1a. Array: \(numbersArray)")

var studentScores: [String: Int] = ["Alice": 85, "Bob": 92, "Charlie": 78]
print("1b. Dictionary: \(studentScores)")

var uniqueIDs: Set<Int> = [101, 202, 303, 101, 404]
print("1c. Set (Note 101 only appears once): \(uniqueIDs)")

var optionalName: String? = "Eve"
var optionalGrade: Int? = nil 

print("\n--- 2. Optionals (if let & nil coalescing) ---")

if let safeName = optionalName {
    print("2a. Success: Hello, \(safeName)! The optional name was safely unwrapped.")
} else {
    print("2a. Failure: The optional name is nil.")
}

let finalGrade = optionalGrade ?? 60
print("2b. Nil Coalescing: Grade is \(finalGrade) (defaulted to 60 because optionalGrade was nil).")



let bobScore = studentScores["Bob"] ?? 0 

print("\n--- 3. Conditional Logic (if/else and switch) ---")

if bobScore >= 90 {
    print("3a. If check: Bob's score (\(bobScore)) is excellent (A).")
} else if bobScore >= 80 {
    print("3a. If check: Bob's score (\(bobScore)) is good (B).")
} else {
    print("3a. If check: Bob's score (\(bobScore)) needs improvement (C or lower).")
}

let scoreToTest = bobScore
let scoreStatus: String

switch scoreToTest {
case 95...100: // Closed Range
    scoreStatus = "Top Tier Performance"
case 90..<95: // Half-Open Range
    scoreStatus = "Excellent Performance"
case 0..<90:
    scoreStatus = "Satisfactory or lower"
default:
    scoreStatus = "Invalid Score"
}
print("3b. Switch check: Score Status: \(scoreStatus)")



print("\n--- 4. Loops and Ranges ---")

print("4a. Counting using Closed Range (1...3):")
for i in 1...3 {
    print("Loop Count: \(i)")
}

var arrayIndex = 0
print("\n4b. Iterating Array with 'while' loop:")
while arrayIndex < numbersArray.count {
    print("While loop: Value at index \(arrayIndex): \(numbersArray[arrayIndex])")
    arrayIndex += 1
}

var countdown = 3
print("\n4c. Countdown using 'repeat-while' loop:")
repeat {
    print("Repeat-While: T-\(countdown)...")
    countdown -= 1
} while countdown > 0
print("Repeat-While: Lift Off!")


let requiredID = 303
print("\n--- 5. Set Operation ---")
if uniqueIDs.contains(requiredID) {
    print("5. Set check: The required ID (\(requiredID)) is present in the uniqueIDs Set.")
}
uniqueIDs.remove(101)
print("5. Updated Set after removing 101: \(uniqueIDs)")