//: [Previous](@previous)
import Foundation


let arr = [1,2,3,4,5,6] // count 6, index = 0...5

func printDecrease(_ index: Int, _ arr: [Int]){
    if index == arr.count {
        return
    }
    print("Ourput -- \(arr[index])")
    printDecrease(index + 1, arr)
    print("Ourput -- \(arr[index])")
}


printDecrease(0, arr)

// given
//
//let inputArray = [1,2,3,5,4,6,6,6,7,7,6]
// x = 6
// first and last and all occurences
/*
func occurences(_ arr: [Int], _ val: Int, _ index: Int) -> Int {
    if index >= arr.count {
        return -1
    }
    if val == arr[index] {
        return index
    }
    
    return occurences(arr, val, index + 1)
}

let res = occurences(inputArray, 6, 0)
*/

let inputArray = [1,2,3,5,4,6,6,6,7,7,6]

func occurences(_ arr: [Int], _ val: Int, _ index: Int) -> Int {
    
    if index >= arr.count {
        return -1
    }
    
    let out = occurences(arr, val, index + 1)
    
    if out == -1 {
        if arr[index] == val {
            return index
        } else {
            return out
        }
    } else {
        return out
    }
}

let res = occurences(inputArray, 6, 0)

var size = 5
let arr3 = Array(repeating: 0, count: size)
print(arr3)
func findAllOccurences(_ arr: [Int], _ val: Int, _ index: Int, _ count: inout Int) -> [Int] {
    
    if index == arr.count {
        return Array(repeating: 0, count: count)
    }

    if val == arr[index] {
        count = count + 1
    }
    var out = findAllOccurences(arr, val, index + 1, &count)
    var result = out

    if val == arr[index] {
        result[count - 1] = index
        count = count - 1
    }
    return result
}
var count = 0
let occurencess = findAllOccurences(inputArray, 6, 0, &count)






