class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var arr = [[Int]]()
        for var m in image {
            m.reverse()
            arr.append(m)
        }
        arr = arr.map { $0.map { $0 == 0 ? 1 : 0 } }
        return arr
    }
}