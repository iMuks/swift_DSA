//: [Previous](@previous)

import Foundation

/*
 anagrams
 Write a function, anagrams, that takes in two strings as arguments. The function should return a boolean indicating whether or not the strings are anagrams. Anagrams are strings that contain the same characters, but in any order.

 test_00:

 anagrams('restful', 'fluster'); // -> true
 */
class Anagrams {
    init() { }
    
    func anagrams(_ string1: String, _ string2: String) -> Bool {
        var dict = [Character:Int]()
        for ch in string1 {
            if dict[ch] == nil {
                dict[ch] = 0
            }
            dict[ch]! += 1
        }
        
        for ch in string2 {
            if dict[ch] == nil {
                return false
            } else {
                dict[ch]! -= 1
            }
        }
        
        for item in dict.keys {
            if dict[item] != 0 {
                return false
            }
        }
        return true
    }
    
}

let obj = Anagrams().anagrams("restful", "fluster")
print(obj)
