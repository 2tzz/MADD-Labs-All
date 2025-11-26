
# Exercise 5: Student WGPA and Class Calculator

This Swift program stores the Grade Point Averages (GPAs) for several graduating students and calculates their final Weighted GPA (WGPA) and the resulting class they will be awarded.

The calculations are based on the specific weighting scheme and classification rules commonly used at the Sri Lanka Institute of Information Technology (SLIIT).

---

### WGPA Calculation Formula

The WGPA is calculated using the following weights for each year of study:
* **Year 1:** 0%
* **Year 2:** 20%
* **Year 3:** 30%
* **Year 4:** 50%

**Formula:** `WGPA = (Year1_GPA * 0.0) + (Year2_GPA * 0.2) + (Year3_GPA * 0.3) + (Year4_GPA * 0.5)`

---

### SLIIT Class Honours Regulations

The final class awarded to the student is determined by their calculated WGPA, based on the following standard thresholds:

| WGPA Range            | Class Award                              |
| --------------------- | ---------------------------------------- |
| `WGPA >= 3.70`        | First Class Honours                      |
| `3.30 <= WGPA < 3.70` | Second Class (Upper Division) Honours    |
| `3.00 <= WGPA < 3.30` | Second Class (Lower Division) Honours    |
| `2.00 <= WGPA < 3.00` | Pass                                     |
| `WGPA < 2.00`         | No Award                                 |

---

### Swift Code

The program uses a `Dictionary` to store student data, where the key is the student's name (`String`) and the value is an `Array` of their four yearly GPAs (`[Double]`). A `guard` statement is used to ensure data integrity before performing calculations.

```swift
let studentGPAs: [String: [Double]] = [
    "Amara Silva": [3.1, 3.5, 3.8, 3.9],
    "Bhanu Perera": [2.8, 3.0, 3.4, 3.5],
    "Chathura Fonseka": [2.5, 2.9, 3.1, 3.2],
    "Dilani Jayasuriya": [2.2, 2.5, 2.8, 2.9],
    "Eshan Bandara": [1.8, 1.9, 2.0, 1.9],
    "Invalid Student": [3.0, 3.5, 4.0]
]

print("--- SLIIT Graduating Class Calculator ---\n")

for (studentName, gpas) in studentGPAs {
    guard gpas.count == 4 else {
        print("Student: \(studentName)")
        print("Error: Invalid data. Student must have 4 yearly GPAs. Skipping.")
        print("----------------------------------------\n")
        continue
    }

    let wgpa = (gpas[0] * 0.0) + (gpas[1] * 0.2) + (gpas[2] * 0.3) + (gpas[3] * 0.5)
    let roundedWGPA = (wgpa * 100).rounded() / 100

    var studentClass: String
    if wgpa >= 3.70 {
        studentClass = "First Class Honours"
    } else if wgpa >= 3.30 {
        studentClass = "Second Class (Upper Division) Honours"
    } else if wgpa >= 3.00 {
        studentClass = "Second Class (Lower Division) Honours"
    } else if wgpa >= 2.00 {
        studentClass = "Pass"
    } else {
        studentClass = "No Award - WGPA is below passing grade."
    }

    print("Student: \(studentName)")
    print("Weighted GPA (WGPA): \(roundedWGPA)")
    print("Result: \(studentClass)")
    print("----------------------------------------\n") // Added a separator for cleaner output
}
