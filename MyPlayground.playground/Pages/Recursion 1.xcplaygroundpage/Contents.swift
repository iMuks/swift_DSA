import Foundation

func printNumber(_ num: Int) {
    if num == 0 {
        return
    }
    print("Number -- \(num)")
    printNumber(num - 1)
    print("Number -- \(num)")
}

printNumber(10)

//func printNum(completion :() -> void) {
//    if num == 0 {
//        return
//    }
//    print("Number -- \(num)")
//    completion()
//    print("Number -- \(num)")
//}


func travel(_ num: Int, _ action: (Int) -> Void) {
    if num == 0 {
        return
    }
    print("travel 1 -- \(num)")
    travel(num - 1, { num in
        print("NUM -- \(num)")
    })
    action(num)

    
    print("travel 2 -- \(num)")
}

travel(10, { item in
    print("\(item)")
})
