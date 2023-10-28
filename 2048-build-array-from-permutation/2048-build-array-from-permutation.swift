class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var sortedNums = nums.sorted()
        var sukruArray = [Int]()
        for i in sortedNums {
            var arraySaid = nums[nums[i]]
            sukruArray.append(arraySaid)
        }
        return sukruArray
    } 
}
