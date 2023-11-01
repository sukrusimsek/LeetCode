class Solution {
    func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {
        var counter = 0
        var indexs = [Int]()
        for i in 0..<nums.count {
            if i.nonzeroBitCount == k {
                indexs.append(i)
            }
        }
        for index in indexs {
            counter += nums[index]
        }
        return counter
    }
}