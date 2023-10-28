class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var copyNums: [Int] = nums
        copyNums += nums
        return copyNums
    }
}