class Solution {
    func findGCD(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        let minNum = sortedNums.startIndex
        let endNum = sortedNums.index(before: sortedNums.endIndex)
        var smallest = sortedNums[minNum]
        var largest = sortedNums[endNum]
        while largest != 0 {
            let tech = smallest % largest
            smallest = largest
            largest = tech
        }
        return abs(smallest)
    }
}