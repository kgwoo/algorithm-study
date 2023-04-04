import Foundation

func solution(_ s:String) -> [Int] {
    
    var str = s
    var removedZeroCnt = 0
    var count = 0
    
    while(str != "1"){
        var tempStr = ""
        for s in str {
            if s == "1"{
                tempStr += String(s)
            }else{
                removedZeroCnt += 1
            }
        }
        
        str = String(tempStr.count, radix:2)
        count += 1
        if str == "1" {
            break
        }
    }
    
    return [count, removedZeroCnt]
}