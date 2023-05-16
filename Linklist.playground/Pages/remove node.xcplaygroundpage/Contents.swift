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

class RemoveNode {
    
    func removeNode(_ node: NewNode?,_ targetValue: Int) -> NewNode? {
        var currentNode = node
        if currentNode?.value == targetValue {
            return currentNode?.next
        }
        var prev : NewNode? = nil
        while currentNode != nil {
            if currentNode?.value == targetValue {
                prev?.next = currentNode?.next
                break
            }
            prev  = currentNode
            currentNode = currentNode?.next
        }
        return node
    }
    
    func removeNodeUsingRec(_ node: NewNode?, targetValue: Int) -> NewNode? {
        var currentNode = node
        
        if currentNode == nil {
            return nil
        }
        if currentNode?.value == targetValue {
            return currentNode?.next
        }
        currentNode?.next = removeNode(currentNode?.next, targetValue)
        return currentNode
    }
    
}


let node2 = NewNode(2)
let node16 = NewNode(16)
let node34 = NewNode(34)
let node39 = NewNode(39)

node2.next = node16
node16.next = node34
node34.next = node39


//var result = RemoveNode().removeNode(node2, 2)
var result = RemoveNode().removeNodeUsingRec(node2, targetValue: 16)

while result != nil {
    print(result?.value)
    result = result?.next
}
