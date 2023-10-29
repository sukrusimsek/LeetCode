class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var arr : [Character] = Array(repeating: "s",count: indices.count)
        let char = Array(s)
        for i in 0..<indices.count {
            arr[indices[i]] = char[i]
        }
        let out = String(arr)
        return out
    }
}