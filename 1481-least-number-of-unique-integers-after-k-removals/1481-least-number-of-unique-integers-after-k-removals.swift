class Solution {
    func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
        var dictArr = [Int: Int]()
        for i in arr {
            dictArr[i, default: 0] += 1
        }
        var sorted = dictArr.values.sorted()
        var index = 0
        var kVar = k
        while kVar > 0 {
            if sorted[index] <= kVar {
                kVar -= sorted[index]
                index += 1
            } else {
                break
            }
        }
        return sorted.count - index
    }
}