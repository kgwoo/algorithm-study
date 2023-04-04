func solution(_ n:Int) -> Int {
    var result = 0
    var arr:[Int] = [0,1]
    
    for i in 1..<n{
        if let lastValue = arr.last{
            if arr.count >= 2{
                if arr.count - 2 >= 0 {
                    let value:Int = (lastValue + arr[arr.count - 2]) % 1234567
                    arr.append(Int(value))
                }
           }
        }
    }
      
    if let lastValue = arr.last{
        return lastValue % 1234567
    }else{
        return 0
    }
}