class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count == 1 { return [nums] }
        if nums.isEmpty { return [] }
        var arr = [[Int]]()
        for i in 0..<nums.count {
            var result = nums
            var normal = result.remove(at: i)
            for j in permute(result) {
                arr.append([normal] + j)
            }
        }
        return arr
    }
}