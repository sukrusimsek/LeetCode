class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var counter = 0
        for j in 0..<nums.count {
            for i in 0..<j {
                if nums[j] == nums[i] {
                counter += 1
                }
            }
        }
        return counter
    }
}