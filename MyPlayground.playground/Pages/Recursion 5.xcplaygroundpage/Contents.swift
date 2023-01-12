//: [Previous](@previous)

import Foundation

// find number in array using binary search with the help of recurssion

let inputArray: [Int] = [1,2,3,4,5,6,7]

//func binarySearch(_ array: Array<Int>, _ num: Int) -> Int {
//    let length = array.count
//
//    let mid: Int = length / 2
//
//    let midValue = array[mid]
//
//    if midValue > num {
//        let slice: ArraySlice<Int> = array[0...mid]
//        binarySearch(Array(slice), num)
//    } else if midValue < num {
//        let newArr: ArraySlice<Int> = array[mid...]
//        binarySearch(Array(newArr), num)
//    } else {
//        // found
//        if midValue == num {
//            return mid
//        } else {
//            return -1
//        }
//    }
//    return -1
//}


func binarySearch(_ array: [Int], _ value: Int , _ low: Int, _ high: Int ) -> Int {
    if low > high {
        return -1
    } else {
        var mid = high + low / 2
        if value == array[mid] {
            return mid
        }
        if value > array[mid] {
            return binarySearch(array, value, mid + 1, high)
        } else {
            return binarySearch(array, value, low, mid - 1)
        }
    }
}

let res = binarySearch(inputArray, 9, 0, inputArray.count - 1)


