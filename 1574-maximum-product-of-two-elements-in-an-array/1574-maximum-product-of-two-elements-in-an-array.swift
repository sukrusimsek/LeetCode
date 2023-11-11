class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        let arr = nums.sorted()
        let value = ((arr[arr.count - 1] - 1) * (arr[arr.count - 2] - 1))
        return value
    }
}