class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var cycle = [Int: Int]()
        for i in nums {
            cycle[i, default: 0] += 1
        }
        let max = cycle.values.max() ?? 0
        let result = cycle.values.filter { $0 == max }.count
        return result * max
    }
}