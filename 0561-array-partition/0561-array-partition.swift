class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var arrPair = [Any]()
        var counter = 0
        for i in stride(from: 0, to: sortedNums.count, by: 2) {
        let pair = [sortedNums[i], sortedNums[i + 1]]
        arrPair.append(pair)
        }
        for pair in arrPair {
            if let array = pair as? [Int] {
                var firstEl = array.first
                var secondEl = array[1]
                counter += firstEl!
                print(counter)
            }
        }
        return counter
    }
}