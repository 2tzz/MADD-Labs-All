import Foundation

func display(no: Int) {
    print("Function 1 (Int, Label: no): Displaying integer value \(no)")
}


func display(anotherNo: Int) {
    print("Function 2 (Int, Label: anotherNo): Displaying integer value \(anotherNo)")
}


func display(no: Double) {
    print("Function 3 (Double, Label: no): Displaying Double value \(no)")
}


func display(_ no: Double) {
    print("Function 4 (Double, No Label): Displaying Double value \(no)")
}


print("--- Testing the Overloaded Functions ---")

display(no: 100)

display(anotherNo: 200)

display(no: 3.14159)

display(99.99)

print("\n")




func test(no: Double) -> Double {
    print("Function 'test' called with value: \(no)")
    return no * 2
}

print("--- Conflict Analysis ---")
let testResult = test(no: 5.0)
print("Calling 'test(no: 5.0)' resulted in: \(testResult)")


print("\nThe function 'test(no: Double) -> Double' does not conflict with any of the 'display' functions because the function name is different.")
print("A conflict would occur if we tried to define a fifth 'display' function that only differed by its return type from an existing one.")