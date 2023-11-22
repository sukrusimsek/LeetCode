class Solution {
    func sumOfSquares(_ nums: [Int]) -> Int {
        let n = nums.count
        var arr = [Int]()
        for i in 0..<nums.count {
            if n % (i+1) == 0 {
                arr.append(nums[i])
            }
        }
        let square = arr.map { $0 * $0 }
        let sum = square.reduce(0) { $0 + $1 }
        return sum
    }
}