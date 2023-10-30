class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        let joinedWord1 = word1.joined(separator: "")
        let joinedWord2 = word2.joined(separator: "")
        return joinedWord1 == joinedWord2
    }
}