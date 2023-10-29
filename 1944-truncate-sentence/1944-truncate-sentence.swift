class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var arr = s.split(separator: " ")
        var result = [String]()
        for i in 0..<k {
            result.append(String(arr[i]))
        }
        var finish = result.joined(separator: " ")
        return finish
    }
}