class Solution {
    func separateDigits(_ nums: [Int]) -> [Int] {
        var resultNums = [Int]()
        for i in nums {
            let numString = String(i)
            for onlyNum in numString {
                if let char = Int(String(onlyNum)) {
                    resultNums.append(char)
                }
            }
        }
        return resultNums
    }
}