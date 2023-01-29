//: [Previous](@previous)

import Foundation

class GetNodeValue {
    init(){ }
    
    func findValue(_ value: Int) -> Int {
        return nodeValue(LinkList().head, value)
    }
    
    func nodeValue(_ head: Node?, _ value: Int) -> Int {
        guard var current = head else {
            return -1
        }
        
        if current.value == value {
            return value
        }

        return nodeValue(current.next, value)
    }
    
}

example(of: "GetNodeValue") {
    let out = GetNodeValue().findValue(120)
    print(out)
}
