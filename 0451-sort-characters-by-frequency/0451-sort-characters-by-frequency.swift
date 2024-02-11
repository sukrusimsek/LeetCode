class Solution {
    func frequencySort(_ s: String) -> String {
    var frequencyMap = [Character: Int]()
    for char in s {
        frequencyMap[char, default: 0] += 1
    }
    let sortedFrequency = frequencyMap.sorted { $0.value > $1.value }
    var result = ""
    for (char, count) in sortedFrequency {
        result += String(repeating: char, count: count)
    }
    
    return result
    }
}