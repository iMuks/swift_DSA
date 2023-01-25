//: [Previous](@previous)

import Foundation

/*
 find most frequent char
 
 */

class MostFrequentChar {
    init() { }
    func mostFrequentChar(_ string: String) -> Character? {
        var dict = [Character:Int]()
        for ch in string {
            if dict[ch] == nil {
                dict[ch] = 0
            }
            dict[ch]! += 1
        }
        
        var best: Character? = nil
        for ch in string {
            if best == nil  || dict[ch]! > dict[best!]! {
                best = ch
            }
        }
        return best
    }
}

let mostFrequentChar = MostFrequentChar().mostFrequentChar("davidiii")
