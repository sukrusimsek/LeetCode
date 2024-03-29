class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var seen = Set<Int>()
        var duplicates = Set<Int>()
        for num in nums {
            if seen.contains(num) {
                duplicates.insert(num)
            } else {
                seen.insert(num)
            }
        }        
        return Array(duplicates)
    }
}