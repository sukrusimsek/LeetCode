class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var counter = 0
        for (row, value) in mat.enumerated() {
            for (column,valueForColumn) in value.enumerated() {
                if row == column || row + column == value.count - 1 {
                    counter += valueForColumn
                }
            }
        }
        return counter
    }
}