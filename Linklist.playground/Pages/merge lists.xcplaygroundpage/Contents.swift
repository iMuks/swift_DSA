//: [Previous](@previous)

import Foundation

public class NewNode<Int> {
  
  public var value: Int
  public var next: NewNode?
  
  public init(_ value : Int, _ next : NewNode? = nil) {
    self.value = value
    self.next = next
  }
    
    
}


//: [Next](@next)
class Merge<Int> {
    
    func mergeLists(_ head1: NewNode<Int>?, head2: NewNode<Int>?) -> NewNode<Int>? {
        var dummyNode: NewNode<Int>? = NewNode<Int>(-100 as! Int)
        var tail = dummyNode
        
        var current1 = head1
        var current2 = head2
        
        while current1 != nil , current2 != nil {
            if let va1: Int = current1?.value, let va2: Int = current2?.value {
                if va1 < va2 {
                    tail?.next = current1
                    current1 = current1?.next
                } else {
                    tail?.next = current2
                    current2 = current2?.next
                }
            }
            print(tail?.value)
            tail = tail?.next
            
        }
        
        if current1 == nil {
            tail?.next = current2
        }
        
        if current2 == nil {
            tail?.next = current1
        }
        
        return dummyNode?.next
    }
}

let node5 = NewNode<Int>(5)
let node7 = NewNode<Int>(7)
let node11 = NewNode<Int>(11)
let node40 = NewNode<Int>(40)

node5.next = node7
node7.next = node11
node11.next = node40



let node2 = NewNode<Int>(2)
let node16 = NewNode<Int>(16)
let node34 = NewNode<Int>(34)
let node39 = NewNode<Int>(39)

node2.next = node16
node16.next = node34
node34.next = node39



let object = Merge<Int>()
var result = object.mergeLists(node5, head2: node2)
while result != nil {
    print(result?.value)
    result = result?.next
}
