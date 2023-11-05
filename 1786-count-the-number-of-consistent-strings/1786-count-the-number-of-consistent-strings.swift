class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var counter = 0
        for word in words{
            var charCount = 0
            for char in word {
                if allowed.contains(char) {
                    charCount += 1
                }
            }
            if charCount == word.count {
                counter += 1
            }
            charCount = 0
        }
        return counter
    }
}