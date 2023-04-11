//: [Previous](@previous)

import Foundation


public class NewNode<T> {
  
  public var value: T
  public var next: NewNode?
  
  public init(_ value : T, _ next : NewNode? = nil) {
    self.value = value
    self.next = next
  }
    
    
}




class Zipper<T: Any> {
    
    func zipper(_ head1: NewNode<T>?, _ head2: NewNode<T>?) -> NewNode<T>? {
        
        var tail = head1
        var current1  = head1?.next
        var current2 = head2
        
        var count = 0
        while current1 != nil, current2 != nil {

            if count % 2 == 0 {
                tail?.next = current2
                current2 = current2?.next
                
            } else {
                tail?.next = current1
                current1 = current1?.next
                
            }

            tail = tail?.next
            count = count + 1

        }
        
        
        if current1 != nil {
            tail?.next = current1
        }
        if current2 != nil {
            tail?.next = current2
        }
        return head1
    }

}



let object = Zipper<String>()
let a = NewNode<String>("A")
let b = NewNode<String>("B")
let c = NewNode<String>("C")
let d = NewNode<String>("D")
let e = NewNode<String>("E")


a.next = b
b.next = c
c.next  = d
d.next = e

let f = NewNode<String>("1")
let g = NewNode<String>("2")
let h = NewNode<String>("3")
let i = NewNode<String>("4")
let j = NewNode<String>("5")


f.next = g
g.next = h
h.next = i
i.next = j


var result = object.zipper(a, f)
while result != nil {
    print(result?.value)
    result = result?.next
}
