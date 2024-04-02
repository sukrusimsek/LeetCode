class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var a = [Character:Int](), b = a
        for (p,q) in zip(s,t) {
            a[p] = a[p] ?? a.keys.count
            b[q] = b[q] ?? b.keys.count
            guard a[p] == b[q] else { return false }
        }
        return true

    }
}