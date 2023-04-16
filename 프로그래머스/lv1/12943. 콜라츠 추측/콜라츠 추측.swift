func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    
    while(n != 1){
       
        count += 1
    
        if count > 500 {
            count = -1
            break
        }
        
        if n % 2 == 0 {
            n = n / 2
        }else{
            n = (n * 3) + 1
        }
    }
    
    return count
}