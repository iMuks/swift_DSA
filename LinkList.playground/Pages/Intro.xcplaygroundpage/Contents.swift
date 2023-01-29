//: [Previous](@previous)

import Foundation
/*
 
 create a linklist
 
 */

class IntroLinkList<T> {
    init(){ }
    
    func createLinkList() -> Node? {
        
        let a = Node(5)
        let b = Node(6)
        let c = Node(7)
        let d = Node(8)
        let e = Node(9)
        let f = Node(10)
                
        a.next = b
        b.next = c
        c.next = e
        e.next = f
        f.next = nil
        
        print(a.value.description)
        return nil;
    }
}

example(of: "link List") {
    let intro = IntroLinkList<Int>().createLinkList()
    
}

