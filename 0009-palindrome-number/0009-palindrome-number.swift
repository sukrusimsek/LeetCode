class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        let xs = String(x)
        let reversedXS = String(xs.reversed())
        if xs == reversedXS {
            return true
        } else {
            return false
        }
    }
}