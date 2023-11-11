class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        let result = ((sortNums[0] * sortNums[1]) - (sortNums[sortNums.count-1] * sortNums[sortNums.count-2]))
        return -result
    }
}