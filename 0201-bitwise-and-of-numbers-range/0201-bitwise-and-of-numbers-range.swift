class Solution {
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var left = left, right = right, result = 0
        while left < right {
            left >>= 1
            right >>= 1
            result += 1
        }
        return left << result
    }
}