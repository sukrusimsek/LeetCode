class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
       var array:[Int] = []
       for num in nums {
           if !array.contains(num) {
            array.append(num)
           }
       }
        nums = array
        return nums.count
    }
}
