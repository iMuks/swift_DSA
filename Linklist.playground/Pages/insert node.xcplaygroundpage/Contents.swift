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

class InsertNode {
    func insertNode(_ node: NewNode?, _ value: Int,  _ at: Int) -> NewNode? {
        
        if at == 0 {
            let new = NewNode(value)
            new.next = node
            return new
        }
        
        var currentNode = node
        var currentIndex = 0
        while currentNode != nil {
            if currentIndex == at - 1 {
                let temp = currentNode?.next
                let new = NewNode(value)
                currentNode?.next = new
                currentNode?.next?.next = temp
            }
            currentIndex  = currentIndex + 1
            currentNode = currentNode?.next
        }
        
        
        return node
    }
}


let node2 = NewNode(2)
let node16 = NewNode(16)
let node34 = NewNode(34)
let node39 = NewNode(39)

node2.next = node16
node16.next = node34
node34.next = node39

var result = InsertNode().insertNode(node2, 10, 2)
result = InsertNode().insertNode(node2, 45, 0)

while result != nil {
    print(result?.value)
    result = result?.next
}
