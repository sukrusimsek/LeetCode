class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxCount = 0
        var left = 0
        var right = height.count - 1
        while left < right {
            let width = right - left 
            let minH = min(height[left], height[right])
            let area = width * minH
            maxCount = max(maxCount, area)
            if height[left] < height[right] {
                left += 1
            } else { 
                right -= 1
            }
        }
        return maxCount
    }
}