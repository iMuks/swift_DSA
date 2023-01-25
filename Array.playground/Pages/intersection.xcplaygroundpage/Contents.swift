//: [Previous](@previous)

import Foundation

/*
 intersection
 Write a function, intersection, that takes in two arrays, a,b, as arguments. The function should return a new array containing elements that are in both of the two arrays.

 You may assume that each input array does not contain duplicate elements.

 test_00:

 intersection([4,2,1,6], [3,6,9,2,10]) // -> [2,6]
 */

class IntersectionSolution {
    init(){ }
    func intersection(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var dict = [Int: Bool]()
        var result = [Int]()
        for num in arr1 {
            dict[num]  = true
        }
        
        for num in arr2 {
            if dict[num] == true {
                result.append(num)
            }
        }
        return result
    }
}

let intersectionObj = IntersectionSolution().intersection([4,2,1,6], [3,6,9,2,10])
