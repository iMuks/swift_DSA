//: [Previous](@previous)

import Foundation

func findSecondLargest(_ arr: [Int]) -> Int? {
    
    guard arr.count >= 2 else {
        return Int.min
    }
    var index = 0
    var largestNum = Int.min
    var secondLargestNum = Int.max
    
    while index < arr.count - 1 {
        let currentNum = arr[index]
        
        if currentNum > largestNum {
            secondLargestNum = largestNum
            largestNum = currentNum
            print("SN -- \(secondLargestNum)")
            print("LN -- \(largestNum) \n")

        } else if currentNum > secondLargestNum && currentNum != largestNum {
            secondLargestNum = currentNum
            print("SSN -- \(secondLargestNum)")

        }
        index = index + 1
        
    }
    return secondLargestNum
}

let numbers = [5, 8, 2, 10, 9, 15, 3]
let secondLargestNumber = findSecondLargest(numbers)
print("Second Largest Number -- \(secondLargestNumber)")

