func solution(_ s:String) -> String {
    
    var arr = s.components(separatedBy:" ")
    var lowercase = "abcdefghijklmnopqrstuvwxyz"
    var uppercase = lowercase.uppercased()
    
    for (i,value) in arr.enumerated() {
        var text = ""
        for (i,s) in Array(value).enumerated() {
            var str = String(s)
            if i == 0 && (lowercase.contains(str) || uppercase.contains(str)) {
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