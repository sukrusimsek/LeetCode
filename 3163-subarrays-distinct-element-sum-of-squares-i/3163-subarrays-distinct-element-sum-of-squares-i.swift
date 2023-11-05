class Solution {
    func sumCounts(_ nums: [Int]) -> Int {
        var counter = 0
        for i in 0..<nums.count {
            var setValues = Set<Int>()
            for j in i..<nums.count {
                setValues.insert(nums[j])
                counter += setValues.count * setValues.count
            }
        }
        return counter
    }
}