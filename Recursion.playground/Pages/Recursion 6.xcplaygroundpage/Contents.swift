//: [Previous](@previous)

import Foundation

// Display Array in advanced

func displayArr(_ arr: [Int], _ index: Int){
    
    if index == arr.count {
        return
    }
    print(arr[index])
    displayArr(arr, index + 1)
    print(arr[index])

}
let arr = [1,2,3,4,10,5,6,7,-18,9]
displayArr(arr, 0)


func findMax(_ arr: [Int], _ index: Int) -> Int {
    if index >= arr.count {
        return Int.min
    }

    let re = findMax(arr,index + 1)
    var currentResult = re

    if currentResult < arr[index] {
        currentResult = arr[index]
    }
    
    return currentResult
}

let output = findMax(arr, 0)

func findMin(_ arr: [Int], _ index: Int) -> Int {
    if index >= arr.count {
        return Int.max
    }

    let re = findMin(arr,index + 1)
    var currentResult = re

    if currentResult > arr[index] {
        currentResult = arr[index]
    }
    
    return currentResult
}

let minOut = findMin(arr, 0)

