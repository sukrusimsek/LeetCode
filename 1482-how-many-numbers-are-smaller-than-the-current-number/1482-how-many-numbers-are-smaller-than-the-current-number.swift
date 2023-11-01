class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var sum = [Int]()
        for i in nums {
            var total = 0
            for j in nums {
                    if i > j {
                        total += 1
                    } 
            } 
            sum.append(total)
        } 
        return sum
    }
}