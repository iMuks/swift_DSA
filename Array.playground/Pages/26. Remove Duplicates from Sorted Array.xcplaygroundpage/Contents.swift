
import Foundation

let stringArr = ["","",""]

let numbArr = [1,2,3,4]

let firstIndex = stringArr.first

let firstIndex1 = stringArr[0]

let last = stringArr.last

let lastIndex = stringArr[stringArr.count - 1]

var dynamicArr = [Int]()

// add elements in array

dynamicArr.append(0)
dynamicArr.append(1)
dynamicArr.append(2)


for i in 0...10 {
    dynamicArr.append(i)
}
class Solution {
    init() {}
    // 0(3n)
    func removeDuplicates2(_ nums: inout [Int]) -> Int {
        var dictionary = [Int: Bool]()  // 0(1)
        var result = [Int]() // 0(n)
        for num in nums { // 0(n)
            if dictionary[num] == true {
                continue
            }
            dictionary[num] = true
            result.append(num)
        }
        nums = result // 0(n)
        return nums.count
    }
    
    //0(n)
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count != 0 else {
            return 0
        }
        var i = 0 // 0(1)
        let totalCount = nums.count  // 0(1)
        for j in 1..<totalCount { // 0(n)
            if nums[i] != nums[j] {
                i = i + 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
}

let sol = Solution()
var temp = dynamicArr.sorted()
print(temp)
let outPut = sol.removeDuplicates(&temp)
print(outPut)
print(temp)
