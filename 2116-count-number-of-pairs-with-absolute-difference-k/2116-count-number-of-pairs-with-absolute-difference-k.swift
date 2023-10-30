class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var counter = 0
        for i in 0..<nums.count {
            for j in i..<nums.count {
                if abs(nums[i]-nums[j]) == k {
                    counter += 1
                }
            }
        }
        return counter
    }
}