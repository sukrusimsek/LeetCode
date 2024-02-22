class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var trustC = [Int](repeating: 0, count: n + 1)
        var trustedC = [Int](repeating: 0, count: n + 1)
        for i in trust{
            let personOne = i[0]
            let personTrusted = i[1]
            trustC[personOne] += 1
            trustedC[personTrusted] += 1
        }
        for i in 1...n {
            if trustC[i] == 0 && trustedC[i] == n - 1 {
                return i
            }
        }
        return -1
    }
}