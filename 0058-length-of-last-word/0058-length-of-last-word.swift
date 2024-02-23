class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        guard let words = s.split(separator: " ").last else { return 0}
        return words.count
    }
}