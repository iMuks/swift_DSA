//: [Previous](@previous)

import Foundation


class Zipper {
    
    func zipper(_ head1: Node, _ head2: Node) -> Node {
        
        var tail = head1
        var current1  = head1.next
        var current2 = head2
        
        var count = 0
        
        while current1 != nil, current2 != nil {
            
            if count % 2 == nil {
                tail.next = current2
                current2 = current2.next
                
            } else {
                tail.next = current1
                current1 = current1.next
                
            }
            tail = tail.next
            
            
            count = count + 1
        }
        
        
        if current1 != nil {
            tail.next = current1
        }
        if current2 != nil {
            tail.next = current2
        }
        
        return head1
    }
    
    func zipperWithRecu(_ head1: Node?, _ head2: Node?) -> Node {
        guard var newhead1 = head1, var newhead2 = head2 else {
            return nil
        }
        
        
        
    }
    
    
}
