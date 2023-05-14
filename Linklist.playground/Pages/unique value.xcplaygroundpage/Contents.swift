//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public class NewNode {
  
  public var value: Int
  public var next: NewNode?
  
  public init(_ value : Int, _ next : NewNode? = nil) {
    self.value = value
    self.next = next
  }
    
    
}

class UniqueListList {
    
    func isUnique(_ head: NewNode?) -> Bool {
        if head == nil{
            return false
        }
        let fistValue = head?.value
        
        var current = head
        while current != nil {
            if current?.value != fistValue {
                return false
            }
            current = current?.next
        }
        
        return true
    }
    
    func isUniqueUsingRec(_ head: NewNode?,_ value: Int) -> Bool {
        if head == nil {
            return true
        }
        if value != head?.value {
            return false
        }
        return isUniqueUsingRec(head?.next, value)
    }
    
}

let node2 = NewNode(2)
let node16 = NewNode(2)
let node34 = NewNode(2)
let node39 = NewNode(4)

node2.next = node16
node16.next = node34
node34.next = node39

let obj = UniqueListList()
let out1 = obj.isUnique(node2)
let out2 = obj.isUniqueUsingRec(node2, node2.value)
