class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var out = [Int]()
        for i in 0..<nums.count / 2 {
            let count = nums[2*i]
            let value = nums[2*i+1]
            out += Array(repeating: value, count: count)
        }   
        return out
    } 
}