class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        let totalArr = nums.reduce(0, +)
        let totalArray = nums.description.compactMap { Int(String($0))}.reduce(0,+)
        return totalArr-totalArray
    }
}