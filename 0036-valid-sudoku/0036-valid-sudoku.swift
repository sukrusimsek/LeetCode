class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for row in board {
            if !isValidUnit(row) {
                return false
            }
        }
        for col in 0..<9 {
            var column = [Character]()
            for row in 0..<9 {
                column.append(board[row][col])
            }
            if !isValidUnit(column) {
                return false
            }
        }
        for i in 0..<3 {
            for j in 0..<3 {
                var square = [Character]()
                for x in i*3..<(i+1)*3 {
                    for y in j*3..<(j+1)*3 {
                        square.append(board[x][y])
                    }
                }
                if !isValidUnit(square) {
                    return false
                }
            }
        }
        return true
    }
func isValidUnit(_ unit: [Character]) -> Bool {
    var seen = Set<Character>()
    for digit in unit {
        if digit != "." {
            if seen.contains(digit) {
                return false
            }
            seen.insert(digit)
        }
    }
    return true
    }
}