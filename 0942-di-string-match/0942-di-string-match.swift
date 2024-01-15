class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var l = s.count
        var z = 0
        var result = [Int]()
        for i in s {
            if i == "I" {
                result.append(z)
                z += 1
            } else {
                result.append(l)
                l -= 1
            }
        }
        result.append(l)
        return result
    }
}