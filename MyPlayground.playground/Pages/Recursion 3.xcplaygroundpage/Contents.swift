import Foundation

func powerNum(_ x: Int, n: Int) -> Int {
    
    if n == 0 {
        return 1
    }
    
    return x * powerNum(x, n: n - 1)
}

print(powerNum(10, n: 3))

func powerLogNum(x: Int, n: Int) -> Int {
    if (n == 0){
        return 1
    }
    let power = powerLogNum(x: x, n: n / 2)
    var square = power * power
    
    if n % 2 == 1 {
        square = square * x
    }
    return square
}

print(powerLogNum(x: 2,n: 8))
