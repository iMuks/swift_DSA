import Foundation

// get maze path
//[hhhvvv]

func mazePaths(_ sr: Int, _ sc: Int, _ dc: Int, _ dr: Int) -> [String] {

    // define base case
    
    //1. negative
    if sr > dr || sc > dc {
        return []
    }
    
    // 2. actual base case
    
    if sr == dr && sc == dc {
        return [""]
    }
    
    let r = mazePaths(sr + 1, sc, dc, dr)
    let c = mazePaths(sr, sc + 1, dc, dr)
    
    var result = [String]()
    for item in r {
        var v = "v"
        result.append("\(v)\(item)")
    }
                      
      for item in c {
          var h = "h"
          result.append("\(h)\(item)")
      }
    
    return result
}

let out = mazePaths(0,0,3,3)
print(out.count)


