class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var sum = [Int]()
        sum.append(first)
        for i in 0..<encoded.count {
            sum.append(encoded[i]^sum[i])
        }
        return sum
    }
}