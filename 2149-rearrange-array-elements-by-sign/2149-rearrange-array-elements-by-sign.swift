class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var pos = [Int]()
        var neg = [Int]()
        var arr = [Int]()
        for i in nums {
            if i >= 1 {
                pos.append(i)
            } else {
                neg.append(i)
            }
        }
        if pos.count != neg.count {
            if pos.count > neg.count {
                neg.append(0)
            } else {
                pos.append(0)
            }
        }
        for j in 0..<min(pos.count, neg.count) {
            arr.append(pos[j])
            arr.append(neg[j])
        }
        return arr
    }
}