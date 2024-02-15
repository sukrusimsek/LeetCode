class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        var sortedNums = nums.sorted()
        var psum = sortedNums.reduce(0, +)
        for i in (0..<sortedNums.count).reversed() {
            let lsum = psum - sortedNums[i]
            if lsum <= sortedNums[i] {
                psum -= sortedNums[i]
            }
        }
        return psum != 0 ? psum : -1
    }
}
