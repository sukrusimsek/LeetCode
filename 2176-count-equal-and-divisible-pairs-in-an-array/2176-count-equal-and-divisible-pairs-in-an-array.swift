class Solution {
    func countPairs(_ nums: [Int], _ k: Int) -> Int {
        var counter = 0
        guard nums.count > 1 else { return 0 }
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                if nums[i] == nums[j], (i * j) % k == 0 {
                    counter += 1
                }
            }
        }
        return counter
    }
}