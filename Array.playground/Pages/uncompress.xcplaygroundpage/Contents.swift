import UIKit

/*
 
 Write a function, uncompress, that takes in a string as an argument. The input string will be formatted into multiple groups according to the following pattern:
 
 for example, '2c' or '3a'.
 uncompress("2c3a1t"); // -> 'ccaaat'
 
 */

class Solution {
    init() { }
    func uncompress(_ string: String) -> String {
        var result = ""
        var i: Int = 0
        var j: Int = 0
        while j < string.count {
            let start = string.index(string.startIndex, offsetBy: i)
            let end = string.index(string.startIndex, offsetBy: j)
            let num = string[start...end]
            if let _ =  Int(num) {
                j = j + 1
            } else {
                // write a logic to parse the number from i to j
                let start = string.index(string.startIndex, offsetBy: i)
                let end = string.index(string.startIndex, offsetBy: j)
                let substring = string[start..<end]
                if let myNum = Int(substring) {
                    for  _ in 0..<myNum {
                        if let last = num.last {
                            result = result + "\(last)"
                        }
                    }
                }
                j = j + 1
                i = j
            }
        }
        return result
    }
}

let sol = Solution()
let result = sol.uncompress("420M")
print(result)
