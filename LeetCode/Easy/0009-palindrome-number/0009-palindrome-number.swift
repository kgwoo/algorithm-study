class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let num = String(x)

        if let reversedNum = Int(String(num.reversed())) {
            return reversedNum == x 
        }else{
            return false
        }
    }
}