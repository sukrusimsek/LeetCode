class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var sum = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if (nums[i] + nums[j]) < target {
                    sum += 1
                }
            }
        }
        return sum
    }
}