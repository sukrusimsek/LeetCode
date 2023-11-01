class Solution {
    func leftRightDifference(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var sum = 0
        for i in 0..<nums.count {
            result.append(sum)
            sum += nums[i]
        }
        sum = 0
        for i in 0..<nums.count {
            result[nums.count-1-i] = abs(result[nums.count-1-i] - sum)
            sum += nums[nums.count-1-i]
        }
        return result
    }
}