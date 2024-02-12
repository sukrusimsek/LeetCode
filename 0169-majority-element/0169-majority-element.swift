class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var numberCount = [Int: Int]()
        var biggestNum = 0
        var mostPopularNum = Int()
        for i in nums {
            if let count = numberCount[i] {
                numberCount[i] = count + 1
            } else {
                numberCount[i] = 1
            }
        }
        for (num, count) in numberCount {
            if count > biggestNum {
                mostPopularNum = num
                biggestNum = count
            }
        }
        //print(mostPopularNum)
        return mostPopularNum
    }
}