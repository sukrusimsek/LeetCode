class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        var firstWord = true
        var result = String()
        for word in words {
            let wordRe = String(word.reversed())
            if word == wordRe {
                if firstWord {
                    firstWord = false
                    result = word
                }
            }
        }
        return result
    }
}