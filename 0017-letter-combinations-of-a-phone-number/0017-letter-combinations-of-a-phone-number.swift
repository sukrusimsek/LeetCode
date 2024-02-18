class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else { return [] }
        let phone: [Character: String] = [
        "2": "abc",
        "3": "def",
        "4": "ghi",
        "5": "jkl",
        "6": "mno",
        "7": "pqrs",
        "8": "tuv",
        "9": "wxyz"
        ]
        var result = [String]()
        func tryAllCombination(_ index: Int, _ path: String) {
            if index == digits.count {
                result.append(path)
                return
            }
            let char = digits[digits.index(digits.startIndex, offsetBy: index)]
            guard let chars = phone[char] else { return }
            for i in chars {
                tryAllCombination(index + 1, path + String(i))
            }
        }
        tryAllCombination(0, "")        
        return result
    }
}