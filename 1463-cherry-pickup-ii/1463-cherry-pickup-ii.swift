class Solution {
    func cherryPickup(_ grid: [[Int]]) -> Int {
    let n = grid.count
    let m = grid[0].count
    var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: m), count: m), count: n)
    for j in 0..<m {
        for k in (j+1)..<m {
            dp[n - 1][j][k] = grid[n - 1][j] + grid[n - 1][k]
        }
    }    
    for i in (0..<(n - 1)).reversed() {
        var nextDP: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: m)
        for j in 0..<m {
            for k in (j+1)..<m {
                var maxCherries = 0
                for prevJ in (j-1)...(j+1) {
                    for prevK in (k-1)...(k+1) {
                        if prevJ < prevK && prevJ >= 0 && prevK < m {
                            maxCherries = max(maxCherries, grid[i][j] + grid[i][k] + dp[i + 1][prevJ][prevK])
                        }
                    }
                }
                nextDP[j][k] = maxCherries
            }
        }
        dp[i] = nextDP
    }
    return dp[0][0][m - 1]
}
}
