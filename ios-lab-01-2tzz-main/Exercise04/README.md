Exercise 4: Student Average CalculatorThis Swift program calculates the average marks for a student based on input from the keyboard. It demonstrates safe input handling, looping for multiple entries, and using a sentinel value to terminate input.How to UseRun the program in a Swift environment like Replit or Swift Playgrounds.First, you will be prompted to enter the student's ID. Type the ID and press Enter.Next, enter each mark one by one, pressing Enter after each.When you have finished entering all marks, type the sentinel value -999 and press Enter.The program will then display the student's ID and their calculated average marks, rounded to two decimal places.Key Swift Concepts DemonstratedReading User Input: Using readLine() to capture text from the console.Optional Binding (if let): Safely unwrapping the optional String? returned by readLine() and the optional Double? from the Double(inputString) initializer. This prevents the app from crashing if the input is invalid or nil.Looping with while true: Creating an infinite loop to accept an unknown number of inputs.Sentinel Value: Using a specific value (-999) to signal the end of input and break out of the loop.Type Casting: Converting the user's input from a String to a Double to perform calculations.Error Handling: Checking for division-by-zero if no marks are entered and notifying the user if their input is not a valid number.Codeimport Foundation

    print("Please enter the student's ID: ", terminator: "")
    if let studentID = readLine() {

    var marksTotal: Double = 0.0
    var marksCount: Int = 0
    print("---")
    print("Enter marks for student \(studentID).")
    print("Type -999 and press Enter when you are finished.")
    print("---")

    while true {
        print("Enter mark: ", terminator: "")
        if let inputString = readLine(), let mark = Double(inputString) {
            if mark == -999 {
                break
            }
            marksTotal += mark
            marksCount += 1
        } else {
            print("Invalid input. Please enter a valid number.")
        }
    }

    print("\n--- Results ---")
    print("Student ID: \(studentID)")

    if marksCount > 0 {
        let average = marksTotal / Double(marksCount)
        let roundedAverage = (average * 100).rounded() / 100
        print("Average Marks: \(roundedAverage)")
    } else {
        print("No marks were entered.")
    }
    print("---------------")

    } else {
        print("Could not read student ID.")
    }
    Sample OutputPlease enter the student's ID: S12345
    ---
    Enter marks for student S12345.
    Type -999 and press Enter when you are finished.
    ---
    Enter mark: 85
    Enter mark: 92.5
    Enter mark: 78
    Enter mark: -999
    
    --- Results ---
    Student ID: S12345
    Average Marks: 85.17
---------------
