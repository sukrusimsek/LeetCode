class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var counter = 0
        for i in grid {
            for j in i {
                print(j)
                if j < 0 {
                    counter += 1
                }
            }
        }
        return counter
    }
}