func solution(_ s:String) -> String {
    
    var tuple = Array<(Int, Int)>()
    var arr = s.components(separatedBy:" ")
    
    for v in arr {
        if let num = Int(v){
            print(num)
              if tuple.isEmpty{
                tuple.append((num,num))
            }else{
                  if tuple[0].0 > num {
                      tuple[0].0 = num 
                  }else if tuple[0].1 < num{
                      tuple[0].1 = num
                  } 
            }
        }
      
    }
        
    if tuple.isEmpty {
        return ""
    }else{
         return "\(tuple[0].0) \(tuple[0].1)"
    }
}