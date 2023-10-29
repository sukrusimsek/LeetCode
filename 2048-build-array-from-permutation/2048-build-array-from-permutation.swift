class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var sortedNums = nums.sorted()
        var array = [Int]()
        for i in sortedNums {
            var arrayS = nums[nums[i]]
            array.append(arrayS)
        }
        return array
    }
}