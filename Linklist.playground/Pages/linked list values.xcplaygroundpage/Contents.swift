import UIKit

class LinkListValue {
    init() { }
    
    
    func createLinkList() -> Node {
        let a = Node(10 )
        let b = Node(11 )
        let c = Node(12 )
        let d = Node(13 )
        
        a.next = b
        b.next = c
        c.next = d
        return a
    }
    
    func convertIntoArr(_ node: Node) -> [Int] {
        var result: [Int] = [Int]()
        var current: Node? = node
        while current != nil {
            if let v = current?.value {
                result.append(v)
            }
            current = current?.next
        }
        return result
    }
    
    func recursionIntoArr(_ node: Node?) -> [Int] {
        guard let current = node else {
            return []
        }
        var arr = [Int]()
        arr.append(current.value)
        arr.append(contentsOf: recursionIntoArr(current.next))
        return arr
    }
    
    func linkListValues(_ node: Node?) -> [Int] {
        var array = [Int]()
        fillValues(node, &array)
        return array
    }
    
    func fillValues(_ node: Node? , _ array: inout [Int]) {
        guard let current = node else {
            return
        }
        array.append(current.value)
        fillValues(current.next, &array)
    }
}

example(of: "LinkListValue") {
    let obj  = LinkListValue().createLinkList()
    var current: Node? = obj
    while current != nil {
        print("\(String(describing: current?.value))")
        current  = current?.next ?? nil
    }
}

example(of: "convert Into Array") {
    let obj  = LinkListValue().createLinkList()
    let out = LinkListValue().convertIntoArr(obj)
    let oout = LinkListValue().recursionIntoArr(obj)
    print(out)
    print(oout)
    let cout = LinkListValue().linkListValues(obj)
    print("rec -- \(cout)")

}


example(of: "Print all values") {
    let node = LinkListValue().createLinkList()
    var current: Node? = node
    guard current != nil else {
        print("Empty Node")
        return
    }
    while current != nil {
        print("current value \(String(describing: current?.value))")
        current = current?.next ?? nil
    }
    
}
