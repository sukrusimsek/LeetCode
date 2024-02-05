class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var duplicate: [Character: Int] = [:]
        for ch in s {
            duplicate[ch, default: 0] += 1
        }
        for (index, i) in s.enumerated() {
            if duplicate[i] == 1 {
                return index
            }
        }
        return -1
    }
}