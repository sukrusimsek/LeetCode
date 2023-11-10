class Solution {
    func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
        let maxV = nums.max()!
        var counter = 0
        for i in 0..<k {
            counter += maxV + i
        }
        return counter
    }
}