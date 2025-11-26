import Foundation

func findShortestAndLongest(strings: [String]) -> (shortest: String, longest: String) {
    guard let first = strings.first else {
        return (shortest: "", longest: "")
    }

    return strings.reduce((shortest: first, longest: first)) { result, currentString in
        var shortest = result.shortest
        var longest = result.longest

        if currentString.count < shortest.count {
            shortest = currentString
        }

        if currentString.count > longest.count {
            longest = currentString
        }

        return (shortest: shortest, longest: longest)
    }
}


func findShortestAndLongestInout(strings: [String], shortest: inout String, longest: inout String) {
    guard let first = strings.first else {
        return
    }

    shortest = first
    longest = first

    for currentString in strings {
        if currentString.count < shortest.count {
            shortest = currentString
        }

        if currentString.count > longest.count {
            longest = currentString
        }
    }
}


func findShortestAndLongestVariadic(strings: String...) -> (shortest: String, longest: String) {
    guard let first = strings.first else {
        return (shortest: "", longest: "")
    }

    return strings.reduce((shortest: first, longest: first)) { result, currentString in
        var shortest = result.shortest
        var longest = result.longest

        if currentString.count < shortest.count {
            shortest = currentString
        }

        if currentString.count > longest.count {
            longest = currentString
        }

        return (shortest: shortest, longest: longest)
    }
}


let words = ["apple", "banana", "kiwi", "grapefruit", "fig"]

print("--- 1. Tuple Return Example ---")
let resultTuple = findShortestAndLongest(strings: words)
print("Words: \(words)")
print("Shortest String: \(resultTuple.shortest)") 
print("Longest String: \(resultTuple.longest)")   
print("\n")


print("--- 2. Inout Parameter Example ---")
var shortestInout = "Initial"
var longestInout = "Initial"

findShortestAndLongestInout(strings: words, shortest: &shortestInout, longest: &longestInout)
print("Words: \(words)")
print("Shortest String (inout): \(shortestInout)") 
print("Longest String (inout): \(longestInout)")   
print("\n")


print("--- 3. Variadic Parameter Example ---")
let resultVariadic = findShortestAndLongestVariadic(strings: "cat", "elephant", "dog", "antelope", "mouse")
print("Shortest String (variadic): \(resultVariadic.shortest)") 
print("Longest String (variadic): \(resultVariadic.longest)")   
print("\n")

let resultEmpty = findShortestAndLongestVariadic()
print("Result for empty variadic call: \(resultEmpty)") 