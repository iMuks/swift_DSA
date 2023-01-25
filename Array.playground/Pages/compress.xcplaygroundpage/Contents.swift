//: [Previous](@previous)

import Foundation

/*
 compress
 Write a function, compress, that takes in a string as an argument. The function should return a compressed version of the string where consecutive occurrences of the same characters are compressed into the number of occurrences followed by the character. Single character occurrences should not be changed.

 'aaa' compresses to '3a'
 'cc' compresses to '2c'
 't' should remain as 't'
 
 */


class SolutionCompress {
    
    init(){ }
    
    func compress(_ string: String) -> String {
        var result = ""
        var i = 0
        var j = 0
        while i < string.count {
            let indexI = string.index(string.startIndex, offsetBy: i)
            let indexJ = string.index(string.startIndex, offsetBy: j)
            if string[indexI] == string[indexJ] {
                j = j + 1
            } else {
                let num = j - i
                if num == 1 {
                    result = result + "\(string[indexI])"
                } else {
                    result = result + "\(num)" + "\(string[indexI])"
                }
                i = j
            }
        }
        return result
    }
}

let output = SolutionCompress().compress("rrrryyyuu")


