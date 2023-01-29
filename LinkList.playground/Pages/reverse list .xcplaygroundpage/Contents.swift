//: [Previous](@previous)

import Foundation

class ReverseLinkList {
    
    init() { }
    
    func reverse(_ head: Node?, _ prev: Node?) -> Node? {
        guard var current = head else {
            return prev
        }
        let next = current.next
        current.next = prev
        return reverse(next, current)
        
    }
    
    func reverseOld(_ head: Node?) -> Node? {
        var prev : Node? = nil
        var currrent = head
        
        while currrent != nil {
            var next = currrent?.next
            currrent?.next = prev
            prev = currrent
            currrent = next
        }
        return prev
    }
    
    
}

example(of: "reverse") {
    var out1 = ReverseLinkList().reverse(LinkList().head, nil)
    var out2 = ReverseLinkList().reverseOld(LinkList().head)
    
    while out1 != nil {
        print(out1?.value)
        out1 = out1?.next
    }
    
    while out2 != nil {
        print(out2?.value)
        out2 = out2?.next
    }
}
