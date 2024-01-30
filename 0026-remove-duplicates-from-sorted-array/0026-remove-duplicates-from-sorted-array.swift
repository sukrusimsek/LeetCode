class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        var result = 0
        for i in 1..<nums.count {
            if nums[i] != nums[result] {
                result += 1
                nums[result] = nums[i]

            }
        }
        let lastResult = result + 1
        return lastResult
    }
}
