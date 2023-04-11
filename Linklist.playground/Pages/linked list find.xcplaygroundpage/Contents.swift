//: [Previous](@previous)

import Foundation

class LinkListFind {
    init(){ }
    
    func find(_ target: Int) -> Int {
        let list = LinkList()
        var current : Node? = list.head
        while current != nil {
            if current?.value == target {
                break
            }
            current = current?.next
        }
        return current?.value ?? -1
    }
    
}


example(of: "linked list find") {
    let out = LinkListFind().find(111)
    print(out)
}
