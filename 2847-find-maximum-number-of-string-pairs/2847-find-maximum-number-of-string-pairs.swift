class Solution {
    func maximumNumberOfStringPairs(_ words: [String]) -> Int {
        guard words.count > 1 else {return 0}
        var counter = 0
        for i in 0...words.count - 2 {
            for j in i + 1..<words.count {
                if words[i] == String(words[j].reversed()) {
                    counter += 1
                }
            } 
            
        }
        return counter
    }
}