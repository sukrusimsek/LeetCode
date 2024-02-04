class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var counter = 0
        var colMain = matrix
        matrix.removeAll()
        for i in colMain {
            var index = colMain.map { $0[counter] }
            counter += 1
            let reverseIndex = Array(index.reversed())
            matrix.append(reverseIndex)
        }
    }
}