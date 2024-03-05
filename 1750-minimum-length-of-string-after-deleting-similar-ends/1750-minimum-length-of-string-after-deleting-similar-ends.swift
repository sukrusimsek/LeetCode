class Solution {
    func minimumLength(_ s: String) -> Int {
        let chars = Array(s)
        var left = 0
        var right = chars.count - 1
        while left < right && chars[left] == chars[right] {
            let currentChar = chars[left]
            while left <= right && chars[left] == currentChar {
                left += 1
            }
            while right >= left && chars[right] == currentChar {
                right -= 1
            }
        } 
        return right - left + 1
    }
}