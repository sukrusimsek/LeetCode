class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var runningSum = [Int]()
        var sum = 0
        for num in nums {
            sum += num
            runningSum.append(sum)
        }
        return runningSum
    }
}