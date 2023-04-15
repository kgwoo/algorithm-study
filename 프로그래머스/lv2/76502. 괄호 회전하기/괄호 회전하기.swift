import Foundation

func solution(_ s:String) -> Int {
    var arr = Array(s).map{ String($0) }
    var count = s.count - 1
    var result = 0
    
    for i in 0...count {
        var resultArr = Array<String>()

        for v in arr {
            if resultArr.isEmpty{
                resultArr.append(v)
            }else{
                if v == "[" || v == "{" || v == "(" {
                resultArr.append(v)
            }else{
                let lastNum = resultArr.count - 1
                
                if resultArr[lastNum] == "[" && v == "]" {
                    resultArr.removeLast()                    
                }else if resultArr[lastNum] == "{" && v == "}" {
                    resultArr.removeLast()
                }else if resultArr[lastNum] == "(" && v == ")" {
                    resultArr.removeLast()
                }
              }
            }
        }
        
        if resultArr.isEmpty{
            result += 1
        }
            
        arr.append(arr[0])
        arr.removeFirst()
    }
    
    return result
}