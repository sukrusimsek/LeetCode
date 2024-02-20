class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        for i in 0...nums.count {
            if !nums.contains(i) {
                return i
            }
        }
        return nums.count
    }
}