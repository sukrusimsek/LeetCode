class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        var arr = [String]()
        for word in words {
            let firstChar = word.first!
            arr.append(String(firstChar))
        }
        let joined = arr.joined(separator: "")
        return joined == s
    }
}