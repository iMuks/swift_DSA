//: [Previous](@previous)

import Foundation

var greeting = "Binary Tree DFC"

//: [Next](@next)


example(of: greeting) {
    
    var a = BNode<String>("a")
    var b = BNode<String>("b")
    var c = BNode<String>("c")
    var d = BNode<String>("d")
    var e = BNode<String>("e")
    var f = BNode<String>("f")
    var g = BNode<String>("g")
    var h = BNode<String>("h")

    a.left = b
    a.right = c
    b.left = d
    b.right = e
    c.left = f
    c.right = g
    g.right = h
    
    let root = a
    
    var stack = [BNode<String>]()
    stack.append(root)
    print("root -- \(root)")

    print("Stack -- \(stack)")
    
    while stack.count > 0 {
        var pop = stack.removeLast()
        print("Value -- \(pop.value)")
        if let right = pop.right {
            stack.append(right)
        }
        if let left = pop.left {
            stack.append(left)
        }
    }
    
}

example(of: greeting) {
    
    var a = BNode<String>("a")
    var b = BNode<String>("b")
    var c = BNode<String>("c")
    var d = BNode<String>("d")
    var e = BNode<String>("e")
    var f = BNode<String>("f")
    var g = BNode<String>("g")
    var h = BNode<String>("h")

    a.left = b
    a.right = c
    b.left = d
    b.right = e
    c.left = f
    c.right = g
    g.right = h
    
    let root = a
    
    var stack = [BNode<String>]()
    stack.append(root)
    print("root -- \(root)")

    print("Stack -- \(stack)")
    
    while stack.count > 0 {
        var pop = stack.removeLast()
        print("Value -- \(pop.value)")
        if let right = pop.right {
            stack.append(right)
        }
        if let left = pop.left {
            stack.append(left)
        }
    }
    
//    func dfs(_ root: BNode<String>?) ->[BNode<String>]? {
//        guard let croot = root else {
//            return []
//        }
//        let leftValue:[BNode<String>] = dfs(croot.left)
//        let rightValue: [BNode<String>] = dfs(croot.right)
//        var values = [root]
//        for v in leftValue {
//            if let leftV = v.value {
//                values.append(leftV)
//            }
//        }
//        
//        for v in rightValue {
//            if let rightV = v.value {
//                values.append(rightV)
//            }
//        }
//        values.append(contentsOf: leftValue)
//        values.append(contentsOf: rightValue)
//
//        return values
//    }
    
}

