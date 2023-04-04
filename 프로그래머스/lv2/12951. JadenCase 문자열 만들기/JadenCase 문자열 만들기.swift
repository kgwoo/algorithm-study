func solution(_ s:String) -> String {   
    var arr = s.components(separatedBy:" ")
 
    for (i,value) in arr.enumerated() {
        var text = ""
        for (i,s) in Array(value).enumerated() {
            var str = String(s)
            if i == 0 && s.isLetter {
                str = str.uppercased()
            }else{
                str = str.lowercased()
            }
            
            text += str
        }
    
        arr[i] = text
    }
 
    return arr.joined(separator:" ")
}