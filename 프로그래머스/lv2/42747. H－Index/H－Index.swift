import Foundation

func solution(_ citations:[Int]) -> Int {
    var h = 0
    var hIndex:Int = 0
    var isCalc = true
    
    while isCalc {
        var cnt = 0
        h += 1
        
        for citation in citations{
            if h <= citation {
                cnt += 1
            }
        }
        
        if  cnt >= h {
             hIndex = h
        }else{
            isCalc = false
        }
    }
    
    return hIndex
}