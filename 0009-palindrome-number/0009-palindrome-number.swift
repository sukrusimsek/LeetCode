class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        let xs = String(x)
        let reversedXS = String(xs.reversed())
        if xs == reversedXS {
            return true
        } else {
            return false
        }
    }
}