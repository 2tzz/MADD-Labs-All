# Exercise 3: Swift Optionals - Unwrapping

This exercise demonstrates the two primary ways to unwrap optional values in Swift: **Force Unwrapping** and **Optional Binding**.

## Objectives
* Create and assign values to optional `String` variables.
* Use force unwrapping (`!`) to access an optional's value (unsafe).
* Use optional binding (`if let`) to safely access an optional's value.
* Observe the behavior of optional binding when an optional contains `nil`.

---

## Swift Code Solution

```swift

var firstname: String? = "Thilakshana"
var lastname: String? = "Weerasinghe"

print("--- Force Unwrapping ---")
print("Full Name: \(firstname!) \(lastname!)")

var studentFirstName: String? = "John"
var studentLastName: String? = "Appleseed"

print("--- Optional Binding (Both names valid) ---")
if let fName = studentFirstName, let lName = studentLastName {
    print("Student's Full Name: \(fName) \(lName)")
} else {
    print("One or both names were nil, could not print the full name.")
}
print("--- Optional Binding (One name is nil) ---")
studentFirstName = nil // Setting the first name to nil

if let fName = studentFirstName, let lName = studentLastName {
    print("Student's Full Name: \(fName) \(lName)")
} else {
    print("at least one name is nil.")
    if let validLastName = studentLastName {
        print("The valid name is: \(validLastName)")
    }
}

```

---

## Expected Output

When you run the code above, the console will print the following:

```console
--- Force Unwrapping ---
Full Name: Thilakshana Weerasinghe
------------------------

--- Optional Binding (Both names valid) ---
Student's Full Name: John Appleseed
------------------------------------------

--- Optional Binding (One name is nil) ---
Could not print the full name because at least one name is nil.
The valid name is: Appleseed
----------------------------------------
```

---

## Key Concepts

### Force Unwrapping (`!`)
The exclamation mark `!` is used to forcefully unwrap an optional. You are telling the compiler that you are absolutely certain the optional has a value. If it is `nil` at runtime, your application will **crash**. 💥 It should be used rarely and only when you can guarantee a value exists.

### Optional Binding (`if let`)
This is the **safe** way to handle optionals. `if let` checks if the optional contains a value.
- If it does, it assigns that value to a temporary constant and executes the `if` block.
- If it's `nil`, it skips the `if` block and executes the `else` block (if one is provided). This prevents crashes and allows you to handle the `nil` case gracefully. ✅
