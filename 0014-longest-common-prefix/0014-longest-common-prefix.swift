class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        if strs.count == 1 { return strs[0] }
        var result = strs[0]
        for i in stride(from: 1, to: strs.count, by: 1) {
            while !strs[i].hasPrefix(result) {
                result = String(result.dropLast())
            }
        }
        return result
    }
}