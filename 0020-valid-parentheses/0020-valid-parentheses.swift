class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var chars:[Character] = []
        for c in s{
            switch c{
                case "(": chars.append(")")
                case "[": chars.append("]")
                case "{": chars.append("}")
                default: guard c == chars.popLast() else { return false}
            }
        }
        return chars.isEmpty
    }
}