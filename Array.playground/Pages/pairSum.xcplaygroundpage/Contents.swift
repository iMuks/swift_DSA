//: [Previous](@previous)

import Foundation

/*
 pair sum
 Write a function, pairSum, that takes in an array and a target sum as arguments. The function should return an array containing a pair of indices whose elements sum to the given target. The indices returned must be unique.

 Be sure to return the indices, not the elements themselves.

 There is guaranteed to be one such pair that sums to the target.

 test_00:

 pairSum([3, 2, 5, 4, 1], 8); // -> [0, 2]
 
 */

class PairSumSolution {
    init() {}
    
    func pairSum(_ arr: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Bool]()
        for num in arr {
            let find = target - num
            if dict[num] == true {
                return [num, find]
            }
            dict[find] = true
        }
        return [Int]()
    }
}

let pairSum = PairSumSolution().pairSum([3, 2, 5, 4, 1],8)
