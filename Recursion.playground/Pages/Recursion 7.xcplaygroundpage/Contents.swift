//: [Previous](@previous)

import Foundation

// get subsequences

func finChar(_ string: String) {
    
    for char in string {
        print(char)
    }
}


func findSubsequence1(_ string: String) -> [String] {
    
    if string.count == 0 {
        return [""]
    }
    
    let firstIndex = string.index(string.startIndex, offsetBy: 0)
    let nextIndex = string.index(string.startIndex, offsetBy: 1)
    let first = string[firstIndex]
    let remainingChar = string[nextIndex...]
    var out = findSubsequence1(String(remainingChar))
    var result = [String]()
    // without -> with first
    for item in out {
        result.append(String(item))
        result.append("\(first)\(item)")

    }
    return result
}

let result = findSubsequence1("abcdef")
print(result)

func stairPaths(_ n: Int) -> [String] {
    
    if n < 0 {
        return []
    }
    
    if  n == 0 {
        return [""]
    }
    
    var result = [String]()
    for i in 1...n {
        let first = stairPaths(n - i)
        for item in first {
            result.append("\(i)\(item)")
        }
    }
    
    return result
}


let rrr = stairPaths(4)


