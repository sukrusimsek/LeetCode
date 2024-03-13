class Solution {
    func pivotInteger(_ n: Int) -> Int {
        let sq = sqrt(Double(n * (n + 1) / 2))
        let int = Int(sq)
        return Double(int) == sq ? int : -1
    }
}