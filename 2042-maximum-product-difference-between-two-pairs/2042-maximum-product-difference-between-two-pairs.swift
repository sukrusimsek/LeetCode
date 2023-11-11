class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        let highV = sortNums.max()!
        let highV2 = sortNums[sortNums.count-2]
        let minV = sortNums[0]
        let minV2 = sortNums[1]
        let result = ((highV * highV2) - (minV * minV2))
        return result
    }
}