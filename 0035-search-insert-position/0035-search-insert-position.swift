class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for i in 0..<nums.count{
            if nums[i] == target {
                return i
            } else if target < nums[i] {
                return i
            }
        }
        return nums.count
    }
}