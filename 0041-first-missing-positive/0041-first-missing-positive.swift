class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums = nums
        var count = nums.count
        for i in 0..<count {
            if nums[i] <= 0 {
                nums[i] = count + 1
            }
        }
        for i in 0..<count {
            let num = abs(nums[i])
            if num <= count {
                nums[num - 1] = -abs(nums[num - 1])
            }
        }
        for i in 0..<count {
            if nums[i] > 0 {
                return i + 1
            }
        }
        return count + 1
    }
}