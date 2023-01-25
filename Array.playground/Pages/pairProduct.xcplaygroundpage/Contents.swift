//: [Previous](@previous)

import Foundation

class PairProductSolution {
    
    init() { }
    
    func pairProduct(_ arr: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Bool]()
        for num in arr {
            let find = target/num
            if dict[num] == true {
                return [num, find]
            }
            dict[find] = true
        }
        return [Int]()
        
    }
}
let pairProduct = PairProductSolution().pairProduct([3, 2, 5, 4, 1], 8)
