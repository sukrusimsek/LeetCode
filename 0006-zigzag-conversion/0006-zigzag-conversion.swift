class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        let arr = Array(s)
        var index = 0
        var result = ""
        let shift = numRows > 1 ? (numRows - 1) * 2 : 1
        for row in 0..<numRows {
            index = row
            while index < arr.count {
                result.append(arr[index])
                if row != 0 && row != numRows - 1 {
                    let diagonalIndex = index + (numRows - 1 - row) * 2
                    if diagonalIndex < arr.count {
                        result.append(arr[diagonalIndex])
                    }
                }
                index += shift
            }
        }
        return result
    }
}