func solution(_ arr:[Int]) -> Int {
    var result:Int = 0
    var count = 0
    let max = arr.max()
    
    while result == 0 {
        count += 1
        
        if let m = max{
            let s = arr.allSatisfy { num in
               (m * count) % num == 0
            }
            
            if s {
               result = m * count
            }
        }
    }
    
    return result
}