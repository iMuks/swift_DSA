import Foundation

public class LinkList {
    public var head: Node
    
    public init() {
        let a = Node(10 )
        let b = Node(11 )
        let c = Node(12 )
        let d = Node(13 )
        
        a.next = b
        b.next = c
        c.next = d
        head = a
    }
}
