class Solution {
    func furthestBuilding(_ heights: [Int], _ bricks: Int, _ ladders: Int) -> Int {
        var b = bricks, l = ladders, arr = [Int]()
        for i in 1..<heights.count {
            if heights[i] > heights[i - 1] {
                arr.append(heights[i] - heights[i - 1])
            }
            if arr.count > l {
                arr.sort()
                b -= arr.removeFirst()
            }
            if b < 0 { return i - 1 } 
        }
        return heights.count - 1
    }
}