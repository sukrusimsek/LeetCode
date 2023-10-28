class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result = [Int]()
        for i in 0..<nums.count{
            let ind = index[i]
            let num = nums[i]
            if ind < result.count {
                result.insert(num, at: ind)
            } else {
                result.append(num)
            }
        }
        return result
    }
}