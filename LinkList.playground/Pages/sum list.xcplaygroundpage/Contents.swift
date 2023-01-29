import Foundation

class LinkListSum {
    init() { }
    

    func sumList() -> Int {
        let linklist = LinkList()
        
        var current: Node? = linklist.head
        var result: Int = 0
        while current != nil {
            result = result + current!.value
            current = current?.next
        }
        return result
    }
    
    func recursionSumList() -> Int {
        let linklist = LinkList()
        return rec(linklist.head)
    }
    
    private func rec(_ node: Node?) -> Int {
        guard let c = node else {
            return 0
        }
        return c.value + rec(c.next)
    }
}

example(of: "sum list") {
    let out = LinkListSum().sumList()
    let outt = LinkListSum().recursionSumList()
    print(out)
    print(outt)
}

