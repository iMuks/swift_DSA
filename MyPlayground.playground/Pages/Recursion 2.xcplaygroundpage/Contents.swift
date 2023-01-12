//: [Previous](@previous)

import Foundation

func fabNum(_ int: Int) -> Int {
    
    if int == 0 || int  == 1 {
        return 1
    }
    return int * fabNum(int - 1)
}

func fabNum1(_ int: Int) -> Int {
    
    if int  == 1 || int == 0 {
        return int
    }
    return fabNum1(int - 1) + fabNum1(int - 2)
}

/*

1, 1,2,3,5,
*/
print(fabNum1(9))
