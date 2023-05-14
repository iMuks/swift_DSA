//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//: [Next](@next)
public class NewNode {
  
  public var value: Int
  public var next: NewNode?
  
  public init(_ value : Int, _ next : NewNode? = nil) {
    self.value = value
    self.next = next
  }
    
    
}

class LongestStreak {
    
    func longestStreak(_ head: NewNode?) -> Int {
        var max_Streak = 0
        var curren_Max_Streak = 1
        var previous = -1
        var current = head
        
        while current != nil {
            if current?.value == previous {
                curren_Max_Streak += 1
                
            } else {
                curren_Max_Streak = 1
            }
            
            if max_Streak < curren_Max_Streak {
                max_Streak = curren_Max_Streak
            }
            
            previous =  current!.value
            current = current?.next
        }
        return max_Streak
    }
}

let node2 = NewNode(4)
let node16 = NewNode(4)
let node34 = NewNode(4)
let node39 = NewNode(4)

node2.next = node16
node16.next = node34
node34.next = node39

let obj = LongestStreak()
let out = obj.longestStreak(node2)
print(out)
