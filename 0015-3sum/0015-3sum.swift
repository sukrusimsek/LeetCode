class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
        return []
    }
    var sortedArray = nums.sorted()
    var result = Set<[Int]>()
    for index in 0..<sortedArray.count {
        var lowIndex = index + 1
        var highIndex = nums.count - 1
        while lowIndex  < highIndex  {
            let sum = sortedArray[index] + sortedArray[lowIndex] + sortedArray[highIndex]
            if sum > 0 {
                highIndex -= 1
            } else if sum < 0  {
                lowIndex += 1
            } else {
                result.insert([sortedArray[index], sortedArray[lowIndex], sortedArray[highIndex] ])
                lowIndex += 1
                highIndex -= 1
            }
        }
    }
    return Array(result)
    }
}