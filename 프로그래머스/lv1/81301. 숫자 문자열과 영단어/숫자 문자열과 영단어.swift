import Foundation

func solution(_ s:String) -> Int {
    var numberWord:String = ""
    var word = ""
        
    for i in s {
        let str = String(i)
        
        if Int(str) != nil {
            numberWord += str
        }else{
            word += str
            let newWord = Word(word:word)
            
            if !newWord.value.isEmpty{
                numberWord += newWord.value
                word = ""
            }       
        }
    }
       
    if let result = Int(numberWord){
        return result
    }else{
        return 0
    }
}

struct Word {
    var value:String = ""
    
    init(word:String){
        switch word {
            case "zero": self.value = "0"
            case "one": self.value = "1"
            case "two": self.value = "2"
            case "three": self.value = "3"
            case "four": self.value = "4"
            case "five": self.value = "5"
            case "six": self.value = "6"
            case "seven": self.value = "7"
            case "eight": self.value = "8"
            case "nine":self.value = "9"
            default:break
        }
    }
}