class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 { return 0 }
        if x < 4 { return 1 }
        var min: Int32 = 0
        var max = Int32.max
        var mid = (max - min) / 2
        while true {
            let square = Int(mid) * Int(mid)
            if x < square {
                max = mid
            } else {
                min = mid
            }
            if max - min == 1 {
                return Int(min)
            }
            mid = min + (max - min) / 2
        }
    }
}